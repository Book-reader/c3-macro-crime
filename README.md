# A crime against god using macros
### causes c3c to crash with 'too much memory'. I say the compiler is just weak


#### Usage (requires c3c with patch to lift memory limit, patch does not yet exist)
alternativly replace `"short" num num` with `"char" 0 255` in project.json for a small taste
except you can't, it causes a compiler assert!
```shell
$ c3c build -O5 --trust=full --max-mem 2000000000
$ ./build/number_fuckery
```
