# 1 "fips202.c"
# 1 "fips202.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/opt/Xilinx2018/Vivado/2018.3/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 300 "/opt/Xilinx2018/Vivado/2018.3/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "fips202.c" 2







# 1 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3
# 31 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef int wchar_t;
# 9 "fips202.c" 2
# 1 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 1 3
# 33 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 25 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 345 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 346 "/usr/include/features.h" 2 3 4
# 375 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 392 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 393 "/usr/include/sys/cdefs.h" 2 3 4
# 376 "/usr/include/features.h" 2 3 4
# 399 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 400 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 22 "/usr/include/bits/wchar.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/wchar.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4








typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 34 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 2 3
# 10 "fips202.c" 2
# 1 "./fips202.h" 1



# 1 "/opt/Xilinx2018/Vivado/2018.3/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3
# 5 "./fips202.h" 2
# 14 "./fips202.h"
typedef struct {
  uint64_t s[25];
} keccak_state;


void pqcrystals_fips202_ref_shake128_absorb(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_fips202_ref_shake128_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state);


void pqcrystals_fips202_ref_shake256_absorb(keccak_state *state, const uint8_t *in, size_t inlen);

void pqcrystals_fips202_ref_shake256_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state);

void pqcrystals_fips202_ref_shake128(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);

void pqcrystals_fips202_ref_shake256(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);

void pqcrystals_fips202_ref_sha3_256(uint8_t h[32], const uint8_t in[3], size_t inlen);

void pqcrystals_fips202_ref_sha3_512(uint8_t h[64], const uint8_t *in, size_t inlen);
# 11 "fips202.c" 2


uint8_t h[64];
# 23 "fips202.c"
static uint64_t load64(const uint8_t x[8]) {_ssdm_SpecArrayDimSize(x, 8);
  unsigned int i;
  uint64_t r = 0;

  for(i=0;i<8;i++)
    r |= (uint64_t)x[i] << 8*i;

  return r;
}
# 41 "fips202.c"
static void store64(uint8_t x[8], uint64_t u) {_ssdm_SpecArrayDimSize(x, 8);
  unsigned int i;

  for(i=0;i<8;i++)
    x[i] = u >> 8*i;
}


static const uint64_t KeccakF_RoundConstants[24] = {
  (uint64_t)0x0000000000000001ULL,
  (uint64_t)0x0000000000008082ULL,
  (uint64_t)0x800000000000808aULL,
  (uint64_t)0x8000000080008000ULL,
  (uint64_t)0x000000000000808bULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008009ULL,
  (uint64_t)0x000000000000008aULL,
  (uint64_t)0x0000000000000088ULL,
  (uint64_t)0x0000000080008009ULL,
  (uint64_t)0x000000008000000aULL,
  (uint64_t)0x000000008000808bULL,
  (uint64_t)0x800000000000008bULL,
  (uint64_t)0x8000000000008089ULL,
  (uint64_t)0x8000000000008003ULL,
  (uint64_t)0x8000000000008002ULL,
  (uint64_t)0x8000000000000080ULL,
  (uint64_t)0x000000000000800aULL,
  (uint64_t)0x800000008000000aULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008080ULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008008ULL
};
# 84 "fips202.c"
static void KeccakF1600_StatePermute(uint64_t state[25])
{_ssdm_SpecArrayDimSize(state, 25);
        int round;

        uint64_t Aba, Abe, Abi, Abo, Abu;
        uint64_t Aga, Age, Agi, Ago, Agu;
        uint64_t Aka, Ake, Aki, Ako, Aku;
        uint64_t Ama, Ame, Ami, Amo, Amu;
        uint64_t Asa, Ase, Asi, Aso, Asu;
        uint64_t BCa, BCe, BCi, BCo, BCu;
        uint64_t Da, De, Di, Do, Du;
        uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
        uint64_t Ega, Ege, Egi, Ego, Egu;
        uint64_t Eka, Eke, Eki, Eko, Eku;
        uint64_t Ema, Eme, Emi, Emo, Emu;
        uint64_t Esa, Ese, Esi, Eso, Esu;


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

        KeccakF1600_StatePermute_label1:for( round = 0; round < 24; round += 2 )
        {

            BCa = Aba^Aga^Aka^Ama^Asa;
            BCe = Abe^Age^Ake^Ame^Ase;
            BCi = Abi^Agi^Aki^Ami^Asi;
            BCo = Abo^Ago^Ako^Amo^Aso;
            BCu = Abu^Agu^Aku^Amu^Asu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64 -1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64 -1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64 -1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64 -1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64 -1)));

            Aba ^= Da;
            BCa = Aba;
            Age ^= De;
            BCe = ((Age << 44) ^ (Age >> (64 -44)));
            Aki ^= Di;
            BCi = ((Aki << 43) ^ (Aki >> (64 -43)));
            Amo ^= Do;
            BCo = ((Amo << 21) ^ (Amo >> (64 -21)));
            Asu ^= Du;
            BCu = ((Asu << 14) ^ (Asu >> (64 -14)));
            Eba = BCa ^((~BCe)& BCi );
            Eba ^= (uint64_t)KeccakF_RoundConstants[round];
            Ebe = BCe ^((~BCi)& BCo );
            Ebi = BCi ^((~BCo)& BCu );
            Ebo = BCo ^((~BCu)& BCa );
            Ebu = BCu ^((~BCa)& BCe );

            Abo ^= Do;
            BCa = ((Abo << 28) ^ (Abo >> (64 -28)));
            Agu ^= Du;
            BCe = ((Agu << 20) ^ (Agu >> (64 -20)));
            Aka ^= Da;
            BCi = ((Aka << 3) ^ (Aka >> (64 -3)));
            Ame ^= De;
            BCo = ((Ame << 45) ^ (Ame >> (64 -45)));
            Asi ^= Di;
            BCu = ((Asi << 61) ^ (Asi >> (64 -61)));
            Ega = BCa ^((~BCe)& BCi );
            Ege = BCe ^((~BCi)& BCo );
            Egi = BCi ^((~BCo)& BCu );
            Ego = BCo ^((~BCu)& BCa );
            Egu = BCu ^((~BCa)& BCe );

            Abe ^= De;
            BCa = ((Abe << 1) ^ (Abe >> (64 -1)));
            Agi ^= Di;
            BCe = ((Agi << 6) ^ (Agi >> (64 -6)));
            Ako ^= Do;
            BCi = ((Ako << 25) ^ (Ako >> (64 -25)));
            Amu ^= Du;
            BCo = ((Amu << 8) ^ (Amu >> (64 -8)));
            Asa ^= Da;
            BCu = ((Asa << 18) ^ (Asa >> (64 -18)));
            Eka = BCa ^((~BCe)& BCi );
            Eke = BCe ^((~BCi)& BCo );
            Eki = BCi ^((~BCo)& BCu );
            Eko = BCo ^((~BCu)& BCa );
            Eku = BCu ^((~BCa)& BCe );

            Abu ^= Du;
            BCa = ((Abu << 27) ^ (Abu >> (64 -27)));
            Aga ^= Da;
            BCe = ((Aga << 36) ^ (Aga >> (64 -36)));
            Ake ^= De;
            BCi = ((Ake << 10) ^ (Ake >> (64 -10)));
            Ami ^= Di;
            BCo = ((Ami << 15) ^ (Ami >> (64 -15)));
            Aso ^= Do;
            BCu = ((Aso << 56) ^ (Aso >> (64 -56)));
            Ema = BCa ^((~BCe)& BCi );
            Eme = BCe ^((~BCi)& BCo );
            Emi = BCi ^((~BCo)& BCu );
            Emo = BCo ^((~BCu)& BCa );
            Emu = BCu ^((~BCa)& BCe );

            Abi ^= Di;
            BCa = ((Abi << 62) ^ (Abi >> (64 -62)));
            Ago ^= Do;
            BCe = ((Ago << 55) ^ (Ago >> (64 -55)));
            Aku ^= Du;
            BCi = ((Aku << 39) ^ (Aku >> (64 -39)));
            Ama ^= Da;
            BCo = ((Ama << 41) ^ (Ama >> (64 -41)));
            Ase ^= De;
            BCu = ((Ase << 2) ^ (Ase >> (64 -2)));
            Esa = BCa ^((~BCe)& BCi );
            Ese = BCe ^((~BCi)& BCo );
            Esi = BCi ^((~BCo)& BCu );
            Eso = BCo ^((~BCu)& BCa );
            Esu = BCu ^((~BCa)& BCe );


            BCa = Eba^Ega^Eka^Ema^Esa;
            BCe = Ebe^Ege^Eke^Eme^Ese;
            BCi = Ebi^Egi^Eki^Emi^Esi;
            BCo = Ebo^Ego^Eko^Emo^Eso;
            BCu = Ebu^Egu^Eku^Emu^Esu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64 -1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64 -1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64 -1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64 -1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64 -1)));

            Eba ^= Da;
            BCa = Eba;
            Ege ^= De;
            BCe = ((Ege << 44) ^ (Ege >> (64 -44)));
            Eki ^= Di;
            BCi = ((Eki << 43) ^ (Eki >> (64 -43)));
            Emo ^= Do;
            BCo = ((Emo << 21) ^ (Emo >> (64 -21)));
            Esu ^= Du;
            BCu = ((Esu << 14) ^ (Esu >> (64 -14)));
            Aba = BCa ^((~BCe)& BCi );
            Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
            Abe = BCe ^((~BCi)& BCo );
            Abi = BCi ^((~BCo)& BCu );
            Abo = BCo ^((~BCu)& BCa );
            Abu = BCu ^((~BCa)& BCe );

            Ebo ^= Do;
            BCa = ((Ebo << 28) ^ (Ebo >> (64 -28)));
            Egu ^= Du;
            BCe = ((Egu << 20) ^ (Egu >> (64 -20)));
            Eka ^= Da;
            BCi = ((Eka << 3) ^ (Eka >> (64 -3)));
            Eme ^= De;
            BCo = ((Eme << 45) ^ (Eme >> (64 -45)));
            Esi ^= Di;
            BCu = ((Esi << 61) ^ (Esi >> (64 -61)));
            Aga = BCa ^((~BCe)& BCi );
            Age = BCe ^((~BCi)& BCo );
            Agi = BCi ^((~BCo)& BCu );
            Ago = BCo ^((~BCu)& BCa );
            Agu = BCu ^((~BCa)& BCe );

            Ebe ^= De;
            BCa = ((Ebe << 1) ^ (Ebe >> (64 -1)));
            Egi ^= Di;
            BCe = ((Egi << 6) ^ (Egi >> (64 -6)));
            Eko ^= Do;
            BCi = ((Eko << 25) ^ (Eko >> (64 -25)));
            Emu ^= Du;
            BCo = ((Emu << 8) ^ (Emu >> (64 -8)));
            Esa ^= Da;
            BCu = ((Esa << 18) ^ (Esa >> (64 -18)));
            Aka = BCa ^((~BCe)& BCi );
            Ake = BCe ^((~BCi)& BCo );
            Aki = BCi ^((~BCo)& BCu );
            Ako = BCo ^((~BCu)& BCa );
            Aku = BCu ^((~BCa)& BCe );

            Ebu ^= Du;
            BCa = ((Ebu << 27) ^ (Ebu >> (64 -27)));
            Ega ^= Da;
            BCe = ((Ega << 36) ^ (Ega >> (64 -36)));
            Eke ^= De;
            BCi = ((Eke << 10) ^ (Eke >> (64 -10)));
            Emi ^= Di;
            BCo = ((Emi << 15) ^ (Emi >> (64 -15)));
            Eso ^= Do;
            BCu = ((Eso << 56) ^ (Eso >> (64 -56)));
            Ama = BCa ^((~BCe)& BCi );
            Ame = BCe ^((~BCi)& BCo );
            Ami = BCi ^((~BCo)& BCu );
            Amo = BCo ^((~BCu)& BCa );
            Amu = BCu ^((~BCa)& BCe );

            Ebi ^= Di;
            BCa = ((Ebi << 62) ^ (Ebi >> (64 -62)));
            Ego ^= Do;
            BCe = ((Ego << 55) ^ (Ego >> (64 -55)));
            Eku ^= Du;
            BCi = ((Eku << 39) ^ (Eku >> (64 -39)));
            Ema ^= Da;
            BCo = ((Ema << 41) ^ (Ema >> (64 -41)));
            Ese ^= De;
            BCu = ((Ese << 2) ^ (Ese >> (64 -2)));
            Asa = BCa ^((~BCe)& BCi );
            Ase = BCe ^((~BCi)& BCo );
            Asi = BCi ^((~BCo)& BCu );
            Aso = BCo ^((~BCu)& BCa );
            Asu = BCu ^((~BCa)& BCe );
        }


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
# 362 "fips202.c"
static void keccak_absorb(uint64_t s[25],
                          unsigned int r,
                          const uint8_t *m,
                          size_t mlen,
                          uint8_t p)
{_ssdm_SpecArrayDimSize(s, 25);
  size_t i;
  uint8_t t[200] = {0};
_ssdm_SpecArrayPartition( t, 1, "COMPLETE", 0, "");
# 369 "fips202.c"



  for(i=0;i<25;i++)
    s[i] = 0;
  uint8_t ff;

    for(ff=3;ff>=136;ff=ff-136){

      for(i=0;i<17;i++)
     s[i] ^= load64(m + 8*i);

    KeccakF1600_StatePermute(s);
    mlen -= r;
    m += r;
  }

  for(i=0;i<3;i++)
    t[i] = m[i];
  t[i] = p;
  t[r-1] |= 128;

  for(i=0;i<17;i++)
    s[i] ^= load64(t + 8*i);
}
# 407 "fips202.c"
static void keccak_squeezeblocks(uint8_t *out,
                                 size_t nblocks,
                                 uint64_t s[25],
                                 unsigned int r)
{_ssdm_SpecArrayDimSize(s, 25);
  unsigned int i;
  int kk ;

  for(kk = nblocks;kk>0;kk--){
    KeccakF1600_StatePermute(s);
    for(i=0;i<17;i++)

      store64(out + 8*i, s[i]);
    out += r;}

  }
# 436 "fips202.c"
void pqcrystals_fips202_ref_shake128_absorb(keccak_state *state, const uint8_t *in, size_t inlen)
{
  keccak_absorb(state->s, 168, in, inlen, 0x1F);
}
# 453 "fips202.c"
void pqcrystals_fips202_ref_shake128_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state)
{
  keccak_squeezeblocks(out, nblocks, state->s, 168);
}
# 468 "fips202.c"
void pqcrystals_fips202_ref_shake256_absorb(keccak_state *state, const uint8_t *in, size_t inlen)
{
  keccak_absorb(state->s, 136, in, inlen, 0x1F);
}
# 485 "fips202.c"
void pqcrystals_fips202_ref_shake256_squeezeblocks(uint8_t *out, size_t nblocks, keccak_state *state)
{
  keccak_squeezeblocks(out, nblocks, state->s, 136);
}
# 500 "fips202.c"
void pqcrystals_fips202_ref_shake128(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  unsigned int i;
  size_t nblocks = outlen/168;
  uint8_t t[168];
  keccak_state state;

  pqcrystals_fips202_ref_shake128_absorb(&state, in, inlen);
  pqcrystals_fips202_ref_shake128_squeezeblocks(out, nblocks, &state);

  out += nblocks*168;
  outlen -= nblocks*168;

  if(outlen) {
    pqcrystals_fips202_ref_shake128_squeezeblocks(t, 1, &state);
    for(i=0;i<outlen;i++)
      out[i] = t[i];
  }
}
# 530 "fips202.c"
void pqcrystals_fips202_ref_shake256(uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  unsigned int i;
  size_t nblocks = outlen/136;
  uint8_t t[136];
  keccak_state state;

  pqcrystals_fips202_ref_shake256_absorb(&state, in, inlen);
  pqcrystals_fips202_ref_shake256_squeezeblocks(out, nblocks, &state);

  out += nblocks*136;
  outlen -= nblocks*136;

  if(outlen) {
    pqcrystals_fips202_ref_shake256_squeezeblocks(t, 1, &state);
    for(i=0;i<outlen;i++)
      out[i] = t[i];
  }
}
# 559 "fips202.c"
void pqcrystals_fips202_ref_sha3_256(uint8_t h[32], const uint8_t in[3], size_t inlen)
{_ssdm_SpecArrayDimSize(h, 32);_ssdm_SpecArrayDimSize(in, 3);
_ssdm_op_SpecPipeline(-1, 1, 1, 0, "");
# 560 "fips202.c"

  unsigned int i;
  uint64_t s[25];
_ssdm_SpecArrayPartition( s, 1, "COMPLETE", 0, "");
# 562 "fips202.c"

  uint8_t t[136];

  keccak_absorb(s, 136, in, inlen, 0x06);
  keccak_squeezeblocks(t, 1, s, 136);

  for(i=0;i<32;i++)
    h[i] = t[i];
}
# 581 "fips202.c"
void pqcrystals_fips202_ref_sha3_512(uint8_t h[64], const uint8_t in[2], size_t inlen)
{_ssdm_SpecArrayDimSize(h, 64);_ssdm_SpecArrayDimSize(in, 2);
  unsigned int i;
  uint64_t s[25];
  uint8_t t[72];

  keccak_absorb(s, 72, in, inlen, 0x06);
  keccak_squeezeblocks(t, 1, s, 72);

  for(i=0;i<64;i++)
    h[i] = t[i];
}
