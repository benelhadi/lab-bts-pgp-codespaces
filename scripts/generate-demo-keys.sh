#!/bin/bash
set -e

mkdir -p workspace/alice/.gnupg-alice
mkdir -p workspace/bob/.gnupg-bob

chmod 700 workspace/alice/.gnupg-alice
chmod 700 workspace/bob/.gnupg-bob

cat > /tmp/alice-key.conf <<EOM
Key-Type: RSA
Key-Length: 2048
Name-Real: Alice
Name-Email: alice@example.com
Expire-Date: 0
%no-protection
%commit
EOM

cat > /tmp/bob-key.conf <<EOM
Key-Type: RSA
Key-Length: 2048
Name-Real: Bob
Name-Email: bob@example.com
Expire-Date: 0
%no-protection
%commit
EOM

GNUPGHOME=workspace/alice/.gnupg-alice gpg --batch --generate-key /tmp/alice-key.conf
GNUPGHOME=workspace/bob/.gnupg-bob gpg --batch --generate-key /tmp/bob-key.conf

rm -f /tmp/alice-key.conf /tmp/bob-key.conf

echo "Clés Alice et Bob générées."
