.PHONY: test
test: package-install hello-world.spec.wren hello-world.wren
	wrenc hello-world.spec.wren

.PHONY: package-install
package-install: package.wren
	wrenc package.wren install
