.PHONY: setup clean reset gphr_release

setup: go

go:
	./setup

clean:
	rm -rf test_*

reset: clean
	rm -rf go

gphr_release: gonative_*
	gphr release gonative_linux_{amd64,386} gonative_{windows,darwin,freebsd}_{amd64,386}*
