CC=gcc
CFLAGS=-I.
DEPS = input.h
OBJ = main.o input.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

db: $(OBJ)
	$(CC) -o $@.o $^ $(CFLAGS)

run: db
	./db.o mydb.db

clean:
	rm -f db.o *.db

test: db
	bundle exec rspec

format: *.c
	clang-format -style=Google -i *.c
