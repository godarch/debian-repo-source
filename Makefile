.PHONY: runc

.DEFAULT: build

build: build-darch build-darch-initramfs-tools build-containerd build-runc

build-darch:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd darch && dpkg-buildpackage -b"

build-darch-initramfs-tools:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd darch-initramfs-tools && dpkg-buildpackage -b"

build-containerd:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd containerd && dpkg-buildpackage -b"

build-runc:
	docker run -it --rm -v $(CURDIR):/work godarch/build-debian bash -c "cd runc && dpkg-buildpackage -b"

prepare-docker:
	docker build $(CURDIR)/docker -t godarch/build-debian