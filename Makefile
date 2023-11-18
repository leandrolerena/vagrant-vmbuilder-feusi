.PHONY : build clean package ova cleanbuildova sign sign_check

build: 
	GUI=0 vagrant up
	vagrant halt
clean: 
	vagrant destroy -f
	rm -rf out || true
	rm ./box.ovf || true
	rm package.box || true
package:
	mkdir out || true
	vagrant package
	tar -xvf package.box -C out
	mv package.box out
ova:
	mkdir out || true
	vboxmanage export ubuntu-feusi -o out/ubuntu-feusi.ova
cleanbuildova: clean build package ova
sign:
	(cd out/ && sha256sum ubuntu-feusi.ova > sha256sums.txt && gpg -s --detach-sign sha256sums.txt)

sign_check: 
	(cd out/ && gpg --verify sha256sums.txt.sig sha256sums.txt)

