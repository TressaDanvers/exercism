.PHONY: test
test: result/bin/tests.out
	@./result/bin/tests.out

.PHONY: memcheck
memcheck: ./*.c ./*.h
	@echo Compiling $@
	@nix build .#memcheck
	@./result/bin/memcheck.out
	@echo "Memory check passed"

.PHONY: clean
clean:
	rm result

result/bin/tests.out: ./*.c ./*.h
	@echo Compiling $@
	@nix build
