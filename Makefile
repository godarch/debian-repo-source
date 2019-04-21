.PHONY: runc

.DEFAULT: build

build: build-darch build-darch-initramfs-tools

build-darch:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd darch && dpkg-buildpackage -b"

build-darch-initramfs-tools:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd darch-initramfs-tools && dpkg-buildpackage -b"

prepare-docker:
	docker build $(CURDIR)/docker -t godarch/build-debian