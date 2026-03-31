#!/bin/bash
set -e

GNUPGHOME=workspace/alice/.gnupg-alice gpg --import workspace/preuves/bob_pub.asc
GNUPGHOME=workspace/bob/.gnupg-bob gpg --import workspace/preuves/alice_pub.asc

echo "Clés publiques importées."
