.PHONY: setup clean reset release

setup: go

go:
	./setup

clean:
	rm -rf test_*

reset: clean
	rm -rf go

release: gonative_*
	gphr release gonative_linux_{amd64,386} gonative_{windows,darwin,freebsd}_386
