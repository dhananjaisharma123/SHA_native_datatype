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
static void KeccakF1600_StatePermute(uint64 state[25])
{
        uint6 round;
        uint64 compute[25];
        uint64 Aba, Abe, Abi, Abo, Abu;
        uint64 Aga, Age, Agi, Ago, Agu;
        uint64 Aka, Ake, Aki, Ako, Aku;
        uint64 Ama, Ame, Ami, Amo, Amu;
        uint64 Asa, Ase, Asi, Aso, Asu;
        uint64 Da, De, Di, Do, Du;

        //copyFromState(A, state)
        Aba = state[ 0];
        Abe = state[ 1];
        Abi = state[ 2];
        Abo = state[ 3];
        Abu = state[ 4];
        Aga = state[ 5];
        Age = state[ 6];
        Agi = state[ 7];
        Ago = state[ 8];
        Agu = state[ 9];
        Aka = state[10];
        Ake = state[11];
        Aki = state[12];
        Ako = state[13];
        Aku = state[14];
        Ama = state[15];
        Ame = state[16];
        Ami = state[17];
        Amo = state[18];
        Amu = state[19];
        Asa = state[20];
        Ase = state[21];
        Asi = state[22];
        Aso = state[23];
        Asu = state[24];


        KeccakF1600_StatePermute_label1:for( round = 0; round < NROUNDS; round += 1 )
        {
            //    prepareTheta
        	compute[0] = Aba^Aga^Aka^Ama^Asa;
        	compute[1] = Abe^Age^Ake^Ame^Ase;
        	compute[2] = Abi^Agi^Aki^Ami^Asi;
        	compute[3] = Abo^Ago^Ako^Amo^Aso;
        	compute[4] = Abu^Agu^Aku^Amu^Asu;


            //thetaRhoPiChiIotaPrepareTheta(round  , A, E)
            Da = compute[4]^ROL(compute[1], 1);
			De = compute[0]^ROL(compute[2], 1);
			Di = compute[1]^ROL(compute[3], 1);
			Do = compute[2]^ROL(compute[4], 1);
			Du = compute[3]^ROL(compute[0], 1);


            SPmod(compute,Di,Do,Du,Da,De,ROT[4],Aba,Age,Aki,Amo,Asu);
            compute[0] = compute[0]^(uint64)KeccakF_RoundConstants[round];

			SPmod(compute+5,Da,De,Di,Do,Du,ROT[0],Abo,Agu,Aka,Ame,Asi);

			SPmod(compute+10,Do,Du,Da,De,Di,ROT[1],Abe,Agi,Ako,Amu,Asa);

			SPmod(compute+15,De,Di,Do,Du,Da,ROT[2],Abu,Aga,Ake,Ami,Aso);

			SPmod(compute+20,Du,Da,De,Di,Do,ROT[3],Abi,Ago,Aku,Ama,Ase);

			Aba = compute[0];
			Abe = compute[1];
			Abi = compute[2];
			Abo = compute[3];
			Abu = compute[4];
			Aga = compute[5];
			Age = compute[6];
			Agi = compute[7];
			Ago = compute[8];
			Agu = compute[9];
			Aka = compute[10];
			Ake = compute[11];
			Aki = compute[12];
			Ako = compute[13];
			Aku = compute[14];
			Ama = compute[15];
			Ame = compute[16];
			Ami = compute[17];
			Amo = compute[18];
			Amu = compute[19];
			Asa = compute[20];
			Ase = compute[21];
			Asi = compute[22];
			Aso = compute[23];
			Asu = compute[24];
        }

        //copyToState(state, A)
        state[ 0] = Aba;
        state[ 1] = Abe;
        state[ 2] = Abi;
        state[ 3] = Abo;
        state[ 4] = Abu;
        state[ 5] = Aga;
        state[ 6] = Age;
        state[ 7] = Agi;
        state[ 8] = Ago;
        state[ 9] = Agu;
        state[10] = Aka;
        state[11] = Ake;
        state[12] = Aki;
        state[13] = Ako;
        state[14] = Aku;
        state[15] = Ama;
        state[16] = Ame;
        state[17] = Ami;
        state[18] = Amo;
        state[19] = Amu;
        state[20] = Asa;
        state[21] = Ase;
        state[22] = Asi;
        state[23] = Aso;
        state[24] = Asu;

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
