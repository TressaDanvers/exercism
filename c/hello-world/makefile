LIBS = -lm
CFLAGS = -std=c99 -g -Wall -Wextra -pedantic -Werror -Wmissing-declarations -DUNITY_SUPPORT_64 -DUNITY_OUTPUT_COLOR
ASANFLAGS = -fsanitize=address -fno-common -fno-omit-frame-pointer

.PHONY: test
test: tests.out
	./tests.out

.PHONY: memcheck
memcheck: ./*.c ./*.h
	$(CC) $(ASANFLAGS) $(CFLAGS) test-framework/unity.c ./*.c -o memcheck.out $(LIBS)
	./memcheck.out

.PHONY: clean
clean:
	rm -rf *.o *.out *.out.dSYM

tests.out: ./*.c ./*.h
	$(CC) $(CFLAGS) test-framework/unity.c ./*.c -o tests.out $(LIBS)
