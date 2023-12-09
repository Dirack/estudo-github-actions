all:	build

build:	estudo.x

estudo.x:	estudo.c library.h
	gcc $< -o estudo.x

test:	test_example.x
	./$<; rm $<

test_example.x:	test_example.c library.h
	gcc $< Unity/unity.c -o test_example.x

package:	estudo.x
	mkdir -p build/pacote_0.1_all/usr/local/bin; cp estudo.x build/pacote_0.1_all/usr/local/bin
	cd build; dpkg -b pacote_0.1_all
