#include <stdint.h>
#include <stdio.h>
#include "fips202.h"
#include <inttypes.h>
#include <ap_cint.h>
#define out 32
#define size 9
//#define in_size_test 9
//#include <mc_scverify.h>
//const uint64 expected[3][4] = {{0x5d2c94acf5108929,0x56130132f5c48d53,0x8fc0efe0fa99561d,0x24cd5990c42d88ce},
						//      {0xefa2f3eae919b994,0x95a5e1bc44f0fa79,0x711e040c9910e75b,0xafd76c4bf23844ab},
					//	      {0xd370b5f4f76fa8d5,0xad3195a05e37302b,0xd4509de2e3d00cb5,0x1fa9028221e3f137}};
//const uint8 ink[3][size]  = {{0x00,0x01,0xFF},
					//	   {0x10,0x00,0x55},
						//   {0xFF,0xFF,0xFF}};

//const uint8 ss[] = "Lets test this!";
//char s[] ="Dhananjai";

//const uint8* ss = (uint8*)s;

//uint8 h1[3][out];


const uint8 inn_test[]  = {0x44,0x68,0x61,0x6e,0x61,0x6e,0x6a,0x61,0x69,0x23,0x42,0x34,0x24};
uint8 h2[out];
int idx;
int main(int argc,char *argv[])
{
	size_t in_size_test = sizeof(inn_test);
	for(int ll=0;ll<in_size_test;ll++)
		    	{
		        	printf("%02x",inn_test[ll]);
		    	}
	printf("\n");
	pqcrystals_fips202_ref_sha3_256(h2,inn_test,in_size_test);
	printf("Encoded:0x");
	    	for(int k=0;k<out;k++)
	    	{
	        	printf("%02x",h2[k]);
	    	}
    /*for(int j=0;j<3;j++)
    {
    	pqcrystals_fips202_ref_sha3_256(h1[j],ink[j],size);
    }
    for(int l=0;l<3;l++)
    {
    	printf("Input:0x");
    	for(int m=0;m<size;m++)
    	{
    		printf("%02x",ink[l][m]);
    	}
    	printf("\n");
    	printf("Encoded:0x");
    	for(int k=0;k<out;k++)
    	{
        	printf("%02x",h1[l][k]);
    	}

    	idx = 3l;
    	printf("\n");
    	printf("Expected o/p: ");
    	for(int kk=0;kk<4;kk++)
    	{
    		printf("%#"PRIx64,expected[l][kk]);
    	}
    	printf("\n");
    }*/

    return(0);
}
