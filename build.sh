./autogen.sh || echo done

CFLAGS="-O3 -march=native -D_REENTRANT -funroll-loops -fvariable-expansion-in-unroller -fmerge-all-constants -fbranch-target-load-optimize2 -fsched2-use-superblocks -falign-loops=16 -falign-functions=16 -falign-jumps=16 -falign-labels=16" ./configure --with-curl

make -j 8
