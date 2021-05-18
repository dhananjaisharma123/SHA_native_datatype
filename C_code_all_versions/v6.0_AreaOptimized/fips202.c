/* Based on the public domain implementation in
 * crypto_hash/keccakc512/simple/ from http://bench.cr.yp.to/supercop.html
 * by Ronny Van Keer
 * and the public domain "TweetFips202" implementation
 * from https://twitter.com/tweetfips202
 * by Gilles Van Assche, Daniel J. Bernstein, and Peter Schwabe */

#include <stddef.h>
#include <stdint.h>
#include "fips202.h"
#include <ap_cint.h>
#define NROUNDS 24
#define ROL(a, offset) ((a << offset) ^ (a >> (64-offset)))
uint8 h[64];

static uint64 load64(const uint8 x[8]) {
  uint4 i;
  uint64 r = 0;

  load64_label0:for(i=0;i<8;i++)
    r |= (uint64)x[i] << 8*i;

  return r;
}

/*static uint64 ROL(uint64 a,uint7 offset) {
	uint64 r;
	ROL_label0:for(int k = 0;k<offset;k++)
	{
		r = (a << 1) ^ (a >> 63);
		a=r;
	}
  return r;
}*/

static void store64(uint8 x[8], uint64 u) {
  uint4 i;

  store64_label1:for(i=0;i<8;i++)
    x[i] = u >> 8*i;
}

/* Keccak round constants */
static const uint64 KeccakF_RoundConstants[NROUNDS] = {
  (uint64)0x0000000000000001ULL,
  (uint64)0x0000000000008082ULL,
  (uint64)0x800000000000808aULL,
  (uint64)0x8000000080008000ULL,
  (uint64)0x000000000000808bULL,
  (uint64)0x0000000080000001ULL,
  (uint64)0x8000000080008081ULL,
  (uint64)0x8000000000008009ULL,
  (uint64)0x000000000000008aULL,
  (uint64)0x0000000000000088ULL,
  (uint64)0x0000000080008009ULL,
  (uint64)0x000000008000000aULL,
  (uint64)0x000000008000808bULL,
  (uint64)0x800000000000008bULL,
  (uint64)0x8000000000008089ULL,
  (uint64)0x8000000000008003ULL,
  (uint64)0x8000000000008002ULL,
  (uint64)0x8000000000000080ULL,
  (uint64)0x000000000000800aULL,
  (uint64)0x800000008000000aULL,
  (uint64)0x8000000080008081ULL,
  (uint64)0x8000000000008080ULL,
  (uint64)0x0000000080000001ULL,
  (uint64)0x8000000080008008ULL
};
static const uint7 ROT[5][5] ={{28,20, 3,45,61},
							  { 1, 6,25, 8,18},
							  {27,36,10,15,56},
							  {62,55,39,41, 2},
							  { 0,44,43,21,14}};
static const uint3 rol_ar[5][3] ={{0,4, 1},
							  { 1, 0,2},
							  { 2, 1,3},
							  { 3, 2,4},
							  { 4, 3,0}};

static const uint5 idx_val[5][12]={{0 ,2,3,4,0,1,4,0,6,12,18,24},
								   {5 ,0,1,2,3,4,0,3,9,10,16,22},
								   {10,3,4,0,1,2,1,1,7,13,19,20},
								   {15,1,2,3,4,0,2,4,5,11,17,23},
								   {20,4,0,1,2,3,3,2,8,14,15,21}};
static void SPmod(uint64 compute[5],uint64 aa,uint64 ee,uint64 ii,uint64 oo,uint64 uu,const uint7 rotate[5],uint64 a,uint64 e,uint64 i,uint64 o,uint64 u)
{
	uint64 BCa,BCe,BCi,BCo,BCu;
	a ^= oo;
	BCa = ROL(a, rotate[0]);
	if(rotate[0]==0)
		BCa = a;
	e ^= uu;
	BCe = ROL(e, rotate[1]);
	i ^= aa;
	BCi = ROL(i, rotate[2]);
	o ^= ee;
	BCo = ROL(o, rotate[3]);
	u ^= ii;
	BCu = ROL(u, rotate[4]);
	compute[0] =   BCa ^((~BCe)&  BCi );
	compute[1] =   BCe ^((~BCi)&  BCo );
	compute[2] =   BCi ^((~BCo)&  BCu );
	compute[3] =   BCo ^((~BCu)&  BCa );
	compute[4] =   BCu ^((~BCa)&  BCe );
}

static void theta(uint64 compute[1],uint64 state_partial_1,uint64 state_partial_2,uint64 state_partial_3,uint64 state_partial_4,uint64 state_partial_5)
{
	compute[0] = state_partial_1^(state_partial_2)^(state_partial_3)^(state_partial_4)^(state_partial_5);
}

static void KeccakF1600_StatePermute(uint64 state[25])
{
        uint5 idx,round;
        uint64 compute[25];
        uint64 D[5];

        KeccakF1600_StatePermute_label1:KeccakF1600_StatePermute_label0:for( round = 0; round < NROUNDS; round += 1 )
        {
            //    prepareTheta
        	for(idx=0;idx<5;idx++)
        		theta(compute+idx,state[0+idx],state[5+idx],state[10+idx],state[15+idx],state[20+idx]);

            //thetaRhoPiChiIotaPrepareTheta(round  , A, E)
        	for(idx=0;idx<5;idx++)
        		D[rol_ar[idx][0]] = compute[rol_ar[idx][1]]^ROL(compute[rol_ar[idx][2]], 1);

			for(idx=0;idx<5;idx++)
				SPmod((compute+idx_val[idx][0]),D[idx_val[idx][1]],D[idx_val[idx][2]],D[idx_val[idx][3]],D[idx_val[idx][4]],D[idx_val[idx][5]],
					ROT[idx_val[idx][6]],state[idx_val[idx][7]],state[idx_val[idx][8]],state[idx_val[idx][9]],state[idx_val[idx][10]],state[idx_val[idx][11]]);

			compute[0] = compute[0]^(uint64)KeccakF_RoundConstants[round];

			for(idx =0;idx<25;idx++)
				state[idx]=compute[idx];
        }
}


static void keccak_absorb(uint64 s[25],
                          unsigned int r,
                          const uint8 *m,
                          size_t mlen,
                          uint8 p)
{
  size_t i;
  uint8 t[200] = {0};

  /* Zero state */
  keccak_absorb_label6:for(i=0;i<25;i++)
    s[i] = 0;
  uint8 ff;

    keccak_absorb_label7:for(ff=mlen;ff>=SHA3_256_RATE;ff=ff-SHA3_256_RATE)
    {
      keccak_absorb_label0:for(i=0;i<17;i++)
    	s[i] ^= load64(m + 8*i);

      KeccakF1600_StatePermute(s);
      mlen -= r;
      m += r;
    }

    keccak_absorb_label4:for(i=0;i<mlen;i++)
    	t[i] = m[i];

    t[i] = p;
    t[r-1] |= 128;

    keccak_absorb_label5:for(i=0;i<17;i++)
    	s[i] ^= load64(t + 8*i);

}

static void keccak_squeezeblocks(uint8 *out,
                                 size_t nblocks,
                                 uint64 s[25],
                                 unsigned int r)
{
  uint6 i;
  int kk ;

  keccak_squeezeblocks_label3:for(kk = nblocks;kk>0;kk--){
    KeccakF1600_StatePermute(s);
    keccak_squeezeblocks_label8:for(i=0;i<17;i++)
      store64(out + 8*i, s[i]);
    out += r;}
    --nblocks;
}
void sha3_256(uint8 h[32], const uint8 IN[1024], size_t inlen)
{
  uint6 i;
  uint11 j;
  uint64 s[25];
  uint8 t[SHA3_256_RATE];
  keccak_absorb(s, SHA3_256_RATE, IN, inlen, 0x06);
  keccak_squeezeblocks(t, 1, s, SHA3_256_RATE);

  pqcrystals_fips202_ref_sha3_256_label2:for(i=0;i<32;i++)
    h[i] = t[i];
}
