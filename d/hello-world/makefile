build=./build
source=./source

.PHONY: build
build: $(build)/libhello-world.a

$(build)/libhello-world.a: $(wildcard $(source)/*.d)
	mkdir -p $(build)
	dub build
	mv libhello-world.a $(build)/libhello-world.a

.PHONY: test
test: $(wildcard $(source)/*.d)
	dub test
	rm hello-world-test-library

.PHONY: clean
clean:
	rm -rf $(build)
