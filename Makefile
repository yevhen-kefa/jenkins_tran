CC=gcc
CFLAGS=-Wall -Wextra -g

all: tri_bulles

tri_bulles: tri_bulles.c
	$(CC) $(CFLAGS) -o tri_bulles tri_bulles.c

test: tri_bulles
	./tri_bulles > output.txt
	grep "Sorted array" output.txt
	@echo "Test passed successfully!"

clean:
	rm -f tri_bulles output.txt

install: tri_bulles
	mkdir -p /tmp/tri_bulles_prod
	cp tri_bulles /tmp/tri_bulles_prod/