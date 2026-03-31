#!/bin/bash
set -e

GNUPGHOME=workspace/alice/.gnupg-alice \
gpg --armor --output workspace/preuves/message-alice-to-bob.asc \
--encrypt --recipient bob@example.com workspace/alice/message.txt

echo "Message chiffré pour Bob créé."
