# Intro

Packer template for building Freebsd-12 KVM image based upon [this](https://github.com/stblassitude/packer-freebsd) work.

# Usage 

```bash
$ read -s password
$ packer build -var 'user=<your user>' -var "password=${password}" src/kvm/freebsd-12/freebsd-12-amd64.json
```
