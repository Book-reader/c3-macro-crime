# A crime against god using macros
## causes c3c to crash with 'too much memory'. I say the compiler is just weak


### Usage (requires c3c with patch to lift memory limit, increase vmem_init(&ast_arena, 512) and vmem_init(&expr_arena, 512) to 2048 (for the short example, int reqires more in more places))
#### Note: this requires upwards of 1Tib of RAM or atleast 128Gib of RAM and 1Tib of swap
alternativly replace `"int" <int_min> <int_max>` with `"short" <short_min> <short_max>` in project.json for a small taste
```shell
$ c3c build -O5 --trust=full
$ ./build/number_fuckery
```
