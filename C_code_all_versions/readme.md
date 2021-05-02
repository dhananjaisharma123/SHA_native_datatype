#The folder contains the following versions of C-code 
1. V1 -----> The implementation was only for a fixed length message which was specified before runtime (Native data types were used)
2. V2 -----> The code consists of Native data types for VIVADO HLS from the library file <ap_cint.h> as well as it supports variable message length
3. V3 -----> The code was changes in order to optimize the area by altering the number of iterations performed in KeccakStatePermute(iterations changed from 12 to 24)
4. V4 -----> The code was modified in order to optimize area by changing the 5 operations performed in KeccakStatePermute into a seperte function and calling it five times 
5. V5 -----> In order to see the implication on area of functionalizing of a partial operation in KeccakStatePermute , the Code was modified.
