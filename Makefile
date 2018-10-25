.PHONY: runc

.DEFAULT: build

build: build-darch

build-darch:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd darch && dpkg-buildpackage -b"

prepare-docker:
	docker build $(CURDIR)/docker -t godarch/build-debian