#!/bin/bash
set -e

GNUPGHOME=workspace/alice/.gnupg-alice gpg --armor --export alice@example.com > workspace/preuves/alice_pub.asc
GNUPGHOME=workspace/bob/.gnupg-bob gpg --armor --export bob@example.com > workspace/preuves/bob_pub.asc

echo "Clés publiques exportées."
