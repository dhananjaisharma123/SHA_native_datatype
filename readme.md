# SHA-3(256) IMPLEMENTATION

* SHA-3 results for different optimizations and design changes

|Description  |  NDT_a_mod (changed C-code) | NDT_b_mod (changed C-code) | NDT_c_mod (changed C-code) | NDT_d_mod (changed C-code) | No optimization|NDT_Modified Code Area Optimization|
|-------------|-----------------|---------------|---------------|---------------|-----------------|--------------|
|Optimizations|Use of Native data types, unroll (load64, store64, output)|Use of Native data types, unroll (load64, store64, absorb f=2, squeze)|Use of Native data types, unroll (load64, store64, absorb f=2), pipeline(SP)|Use of Native Data types and pipeline (SP, absorb), unroll (load and store)|no optimization|Same as NDT_c_mod|
| Latency     | 509             | 486           |457            |453            |   2343          |492     |
| CP          | 6.937           | 7.487         |7.154          | 8.057         |   4.996         |7.514   |
| RTL         | vhdl            | vhdl          | vhdl          | vhdl          |    vhdl         |vhdl    |
| FF          |7568             | 7408          | 6634          | 6807          |    7529         |6638    |
| LUT         | 39365           | 39648         | 39672         | 39910         |    21234        |21694   |
| BRAM        | 10              | 10            |  10           | 10            | 3               |10      |
