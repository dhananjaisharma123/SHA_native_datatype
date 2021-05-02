#include <stdint.h>
#include <stdio.h>
#include "fips202.h"
#include <inttypes.h>
#include <ap_cint.h>
#define out 32
#define size 9


const uint8 m1[]  = {0x44,0x68,0x61,0x6e,0x61,0x6e,0x6a,0x61,0x69,0x23,0x42,0x34,0x24};
const uint8 m2[]  = {0x10,0x00,0x75,0x57,0x00,0x01,0xFF};

uint8 h2[out];
int idx;
int main(int argc,char *argv[])
{
	size_t m1_len = sizeof(m1);
	size_t m2_len = sizeof(m2);
	printf("message 1 : 0x");
	for(idx=0;idx<m1_len;idx++)
	{
		printf("%02x",m1[idx]);
	}
	printf("\n");
	printf("message 2 : 0x");
	for(idx=0;idx<m2_len;idx++)
	{
		printf("%02x",m2[idx]);
	}
	printf("\n");
	pqcrystals_fips202_ref_sha3_256(h2,m1,m1_len);
	printf("Encoded message 1:0x");
	for(idx=0;idx<out;idx++)
		printf("%02x",h2[idx]);

	pqcrystals_fips202_ref_sha3_256(h2,m2,m2_len);
	printf("\n");
	printf("Encoded message 2:0x");
	for(idx=0;idx<out;idx++)
		printf("%02x",h2[idx]);
	printf("\n");
    return(0);
}
