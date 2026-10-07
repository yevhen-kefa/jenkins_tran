CC=gcc
CFLAGS=-Wall -Wextra

all: tri_bulles

tri_bulles: tri_bulles.c
	$(CC) $(CFLAGS) -o tri_bulles tri_bulles.c

test: tri_bulles
	./tri_bulles > output.txt
	grep "Sorted array" output.txt
	@echo "Test passed successfully!"

clean:
	rm -f tri_bulles output.txt