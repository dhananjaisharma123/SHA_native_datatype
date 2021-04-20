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
/*************************************************
* Name:        load64
*
* Description: Load 8 bytes into uint64 in little-endian order
*
* Arguments:   - const uint8 *x: pointer to input byte array
*
* Returns the loaded 64-bit unsigned integer
**************************************************/
static uint64 load64(const uint8 x[8]) {
  uint4 i;
  uint64 r = 0;

  load64_label0:for(i=0;i<8;i++)
    r |= (uint64)x[i] << 8*i;

  return r;
}

/*************************************************
* Name:        store64
*
* Description: Store a 64-bit integer to array of 8 bytes in little-endian order
*uint64
* Arguments:   - uint8 *x: pointer to the output byte array (allocated)
*              - uint64 u: input 64-bit unsigned integer
**************************************************/
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

/*************************************************
* Name:        KeccakF1600_StatePermute
*
* Description: The Keccak F1600 Permutation
*
* Arguments:   - uint64 *state: pointer to input/output Keccak state
**************************************************/
//static
static void KeccakF1600_StatePermute(uint64 state[25])
{
        uint6 round;

        uint64 Aba, Abe, Abi, Abo, Abu;
        uint64 Aga, Age, Agi, Ago, Agu;
        uint64 Aka, Ake, Aki, Ako, Aku;
        uint64 Ama, Ame, Ami, Amo, Amu;
        uint64 Asa, Ase, Asi, Aso, Asu;
        uint64 BCa, BCe, BCi, BCo, BCu;
        uint64 Da, De, Di, Do, Du;
        uint64 Eba, Ebe, Ebi, Ebo, Ebu;
        uint64 Ega, Ege, Egi, Ego, Egu;
        uint64 Eka, Eke, Eki, Eko, Eku;
        uint64 Ema, Eme, Emi, Emo, Emu;
        uint64 Esa, Ese, Esi, Eso, Esu;

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

        KeccakF1600_StatePermute_label1:for( round = 0; round < NROUNDS; round += 2 )
        {
            //    prepareTheta
            BCa = Aba^Aga^Aka^Ama^Asa;
            BCe = Abe^Age^Ake^Ame^Ase;
            BCi = Abi^Agi^Aki^Ami^Asi;
            BCo = Abo^Ago^Ako^Amo^Aso;
            BCu = Abu^Agu^Aku^Amu^Asu;

            //thetaRhoPiChiIotaPrepareTheta(round  , A, E)
            Da = BCu^ROL(BCe, 1);
            De = BCa^ROL(BCi, 1);
            Di = BCe^ROL(BCo, 1);
            Do = BCi^ROL(BCu, 1);
            Du = BCo^ROL(BCa, 1);

            Aba ^= Da;
            BCa = Aba;
            Age ^= De;
            BCe = ROL(Age, 44);
            Aki ^= Di;
            BCi = ROL(Aki, 43);
            Amo ^= Do;
            BCo = ROL(Amo, 21);
            Asu ^= Du;
            BCu = ROL(Asu, 14);
            Eba =   BCa ^((~BCe)&  BCi );
            Eba ^= (uint64)KeccakF_RoundConstants[round];
            Ebe =   BCe ^((~BCi)&  BCo );
            Ebi =   BCi ^((~BCo)&  BCu );
            Ebo =   BCo ^((~BCu)&  BCa );
            Ebu =   BCu ^((~BCa)&  BCe );

            Abo ^= Do;
            BCa = ROL(Abo, 28);
            Agu ^= Du;
            BCe = ROL(Agu, 20);
            Aka ^= Da;
            BCi = ROL(Aka,  3);
            Ame ^= De;
            BCo = ROL(Ame, 45);
            Asi ^= Di;
            BCu = ROL(Asi, 61);
            Ega =   BCa ^((~BCe)&  BCi );
            Ege =   BCe ^((~BCi)&  BCo );
            Egi =   BCi ^((~BCo)&  BCu );
            Ego =   BCo ^((~BCu)&  BCa );
            Egu =   BCu ^((~BCa)&  BCe );

            Abe ^= De;
            BCa = ROL(Abe,  1);
            Agi ^= Di;
            BCe = ROL(Agi,  6);
            Ako ^= Do;
            BCi = ROL(Ako, 25);
            Amu ^= Du;
            BCo = ROL(Amu,  8);
            Asa ^= Da;
            BCu = ROL(Asa, 18);
            Eka =   BCa ^((~BCe)&  BCi );
            Eke =   BCe ^((~BCi)&  BCo );
            Eki =   BCi ^((~BCo)&  BCu );
            Eko =   BCo ^((~BCu)&  BCa );
            Eku =   BCu ^((~BCa)&  BCe );

            Abu ^= Du;
            BCa = ROL(Abu, 27);
            Aga ^= Da;
            BCe = ROL(Aga, 36);
            Ake ^= De;
            BCi = ROL(Ake, 10);
            Ami ^= Di;
            BCo = ROL(Ami, 15);
            Aso ^= Do;
            BCu = ROL(Aso, 56);
            Ema =   BCa ^((~BCe)&  BCi );
            Eme =   BCe ^((~BCi)&  BCo );
            Emi =   BCi ^((~BCo)&  BCu );
            Emo =   BCo ^((~BCu)&  BCa );
            Emu =   BCu ^((~BCa)&  BCe );

            Abi ^= Di;
            BCa = ROL(Abi, 62);
            Ago ^= Do;
            BCe = ROL(Ago, 55);
            Aku ^= Du;
            BCi = ROL(Aku, 39);
            Ama ^= Da;
            BCo = ROL(Ama, 41);
            Ase ^= De;
            BCu = ROL(Ase,  2);
            Esa =   BCa ^((~BCe)&  BCi );
            Ese =   BCe ^((~BCi)&  BCo );
            Esi =   BCi ^((~BCo)&  BCu );
            Eso =   BCo ^((~BCu)&  BCa );
            Esu =   BCu ^((~BCa)&  BCe );

            //    prepareTheta
            BCa = Eba^Ega^Eka^Ema^Esa;
            BCe = Ebe^Ege^Eke^Eme^Ese;
            BCi = Ebi^Egi^Eki^Emi^Esi;
            BCo = Ebo^Ego^Eko^Emo^Eso;
            BCu = Ebu^Egu^Eku^Emu^Esu;

            //thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
            Da = BCu^ROL(BCe, 1);
            De = BCa^ROL(BCi, 1);
            Di = BCe^ROL(BCo, 1);
            Do = BCi^ROL(BCu, 1);
            Du = BCo^ROL(BCa, 1);

            Eba ^= Da;
            BCa = Eba;
            Ege ^= De;
            BCe = ROL(Ege, 44);
            Eki ^= Di;
            BCi = ROL(Eki, 43);
            Emo ^= Do;
            BCo = ROL(Emo, 21);
            Esu ^= Du;
            BCu = ROL(Esu, 14);
            Aba =   BCa ^((~BCe)&  BCi );
            Aba ^= (uint64)KeccakF_RoundConstants[round+1];
            Abe =   BCe ^((~BCi)&  BCo );
            Abi =   BCi ^((~BCo)&  BCu );
            Abo =   BCo ^((~BCu)&  BCa );
            Abu =   BCu ^((~BCa)&  BCe );

            Ebo ^= Do;
            BCa = ROL(Ebo, 28);
            Egu ^= Du;
            BCe = ROL(Egu, 20);
            Eka ^= Da;
            BCi = ROL(Eka, 3);
            Eme ^= De;
            BCo = ROL(Eme, 45);
            Esi ^= Di;
            BCu = ROL(Esi, 61);
            Aga =   BCa ^((~BCe)&  BCi );
            Age =   BCe ^((~BCi)&  BCo );
            Agi =   BCi ^((~BCo)&  BCu );
            Ago =   BCo ^((~BCu)&  BCa );
            Agu =   BCu ^((~BCa)&  BCe );

            Ebe ^= De;
            BCa = ROL(Ebe, 1);
            Egi ^= Di;
            BCe = ROL(Egi, 6);
            Eko ^= Do;
            BCi = ROL(Eko, 25);
            Emu ^= Du;
            BCo = ROL(Emu, 8);
            Esa ^= Da;
            BCu = ROL(Esa, 18);
            Aka =   BCa ^((~BCe)&  BCi );
            Ake =   BCe ^((~BCi)&  BCo );
            Aki =   BCi ^((~BCo)&  BCu );
            Ako =   BCo ^((~BCu)&  BCa );
            Aku =   BCu ^((~BCa)&  BCe );

            Ebu ^= Du;
            BCa = ROL(Ebu, 27);
            Ega ^= Da;
            BCe = ROL(Ega, 36);
            Eke ^= De;
            BCi = ROL(Eke, 10);
            Emi ^= Di;
            BCo = ROL(Emi, 15);
            Eso ^= Do;
            BCu = ROL(Eso, 56);
            Ama =   BCa ^((~BCe)&  BCi );
            Ame =   BCe ^((~BCi)&  BCo );
            Ami =   BCi ^((~BCo)&  BCu );
            Amo =   BCo ^((~BCu)&  BCa );
            Amu =   BCu ^((~BCa)&  BCe );

            Ebi ^= Di;
            BCa = ROL(Ebi, 62);
            Ego ^= Do;
            BCe = ROL(Ego, 55);
            Eku ^= Du;
            BCi = ROL(Eku, 39);
            Ema ^= Da;
            BCo = ROL(Ema, 41);
            Ese ^= De;
            BCu = ROL(Ese, 2);
            Asa =   BCa ^((~BCe)&  BCi );
            Ase =   BCe ^((~BCi)&  BCo );
            Asi =   BCi ^((~BCo)&  BCu );
            Aso =   BCo ^((~BCu)&  BCa );
            Asu =   BCu ^((~BCa)&  BCe );
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

/*************************************************
* Name:        keccak_absorb
*
* Description: Absorb step of Keccak;
*              non-incremental, starts by zeroeing the state.
*
* Arguments:   - uint64 *s: pointer to (uninitialized) output Keccak state
*              - unsigned int r: rate in bytes (e.g., 168 for SHAKE128)
*              - const uint8 *m: pointer to input to be absorbed into s
*              - size_t mlen: length of input in bytes
*              - uint8 p: domain-separation byte for different
*                           Keccak-derived functions
**************************************************/
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

  /*while(mlen >= r)
  {
      for(i=0;i<17;i++)
        s[i] ^= load64(m + 8*i);

      KeccakF1600_StatePermute(s);
      mlen -= r;
      m += r;
  }

    for(i=0;i<mlen;i++)
      t[i] = m[i];

    t[i] = p;
    t[r-1] |= 128;
    for(i=0;i<17;i++) //     r/8 = 17
      s[i] ^= load64(t + 8*i);*/
}

/*************************************************
* Name:        keccak_squeezeblocksSS
*
* Description: Squeeze step of Keccak. Squeezes full blocks of r bytes each.
*              Modifies the state. Can be called multiple times to keep
*              squeezing, i.e., is incremental.
*
* Arguments:   - uint8 *h: pointer to output blocks
*              - size_t nblocks: number of blocks to be squeezed (written to h)
*              - uint64 *s: pointer to input/output Keccak state
*              - unsigned int r: rate in bytes (e.g., 168 for SHAKE128)
**************************************************/
static void keccak_squeezeblocks(uint8 *out,
                                 size_t nblocks,
                                 uint64 s[25],
                                 unsigned int r)
{
  uint6 i;
  int kk ;
  /*//while(nblocks > 0) {*/

  keccak_squeezeblocks_label3:for(kk = nblocks;kk>0;kk--){
    KeccakF1600_StatePermute(s);
    keccak_squeezeblocks_label8:for(i=0;i<17;i++)
    for(i=0;i<r/8;i++)
      store64(out + 8*i, s[i]);
    out += r;}
    --nblocks;
}
//
  /*while(nblocks > 0)
  {
      KeccakF1600_StatePermute(s);
      for(i=0;i<r/8;i++)
        store64(out + 8*i, s[i]);
      out += r;
      --nblocks;
  }
}*/
void sha3_256(uint8 h[32], const uint8 IN[4096], size_t inlen)
{
  uint6 i;
  uint11 j;
  uint64 s[25];
  uint8 t[SHA3_256_RATE];
  //for(j=0;j<mlen;j++)
  keccak_absorb(s, SHA3_256_RATE, IN, inlen, 0x06);
  keccak_squeezeblocks(t, 1, s, SHA3_256_RATE);

  pqcrystals_fips202_ref_sha3_256_label2:for(i=0;i<32;i++)
    h[i] = t[i];
}
