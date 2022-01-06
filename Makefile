db: main.c
	gcc main.c -o db.o

run: db
	./db.o mydb.db

clean:
	rm -f db.o *.db

test: db
	bundle exec rspec

format: *.c
	clang-format -style=Google -i *.c
