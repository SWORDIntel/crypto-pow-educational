CC = gcc
CFLAGS = -std=c99 -O3 -march=native -mavx2 -Wall
INCLUDES = -Iinclude

all: crypto_pow_demo

crypto_pow_demo: src/crypto_accelerated.c
	$(CC) $(CFLAGS) $(INCLUDES) -o bin/crypto_pow_demo $< -lpthread -lm

clean:
	rm -f bin/*

install: crypto_pow_demo
	sudo cp bin/crypto_pow_demo /usr/local/bin/
