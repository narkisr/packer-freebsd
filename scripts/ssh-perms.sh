#!/bin/sh
cd ~re-ops/.ssh
chmod 0600 authorized_keys
chown -R re-ops:wheel ~re-ops
