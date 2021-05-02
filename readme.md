# SHA-3(256) IMPLEMENTATION
* The the versions of the source code (V1->V5) uploaded in /C_code_all_versions
* SHA-3 results for different optimizations and design changes

|Description  |  NDT_a_mod (changed C-code) | NDT_b_mod (changed C-code) | NDT_c_mod (changed C-code) | NDT_d_mod (changed C-code) | No optimization|NDT_Modified Code Area Optimization|SepFunc|SepFunc_partial|SepFunc_partial_NDT_c_mod|SepFunc_NDT_c_mod|
|-------------|-----------------|---------------|---------------|---------------|-----------------|--------------|---------------|---------------|-----------------|--------------|
|Optimizations|Use of Native data types, unroll (load64, store64, output)|Use of Native data types, unroll (load64, store64, absorb f=2, squeze)|Use of Native data types, unroll (load64, store64, absorb f=2), pipeline(SP)|Use of Native Data types and pipeline (SP, absorb), unroll (load and store)|no optimization|Same as NDT_c_mod|Seprate Function for KeccakStatePermute (No directives)|Partial function for KeccakStatePermution (No directives)|directives of NDT_c_mod|directives of NDT_c_mod|
| Latency     | 509             | 486           |457            |453            |   2343          |492     |2032            |904            |   469      |1477    |
| CP          | 6.937           | 7.487         |7.154          | 8.057         |   4.996         |7.514   |9.743           |6.352          |   6.352    |8.856   |
| RTL         | vhdl            | vhdl          | vhdl          | vhdl          |    vhdl         |vhdl    |vhdl            |vhdl           |   vhdl     |vhdl    |
| FF          |7568             | 7408          | 6634          | 6807          |    7529         |6638    |11855           |6865           |   6634     |13388   |
| LUT         | 39365           | 39648         | 39672         | 39910         |    21234        |21694   |16484           |19563          |   19731    |16341   |
| BRAM        | 10              | 10            |  10           | 10            | 3               |10      |18              |18             |   10       |18      |
