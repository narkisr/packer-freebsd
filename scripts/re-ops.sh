echo "==> Re-ops user setup"
set -ex
echo "re-ops" | pw useradd re-ops -h 0 -s /bin/sh -G wheel -c "re-ops"
pkg install -y sudo
echo "re-ops ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/re-ops
chmod 0440 /usr/local/etc/sudoers.d/re-ops

pkg install -y ca_root_nss
ln -sf /usr/local/share/certs/ca-root-nss.crt /etc/ssl/cert.pem
mkdir -pm 700 ~re-ops/.ssh
