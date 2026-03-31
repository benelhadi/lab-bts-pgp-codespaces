#!/bin/bash
set -e

GNUPGHOME=workspace/alice/.gnupg-alice \
gpg --yes --trust-model always --armor \
--output workspace/preuves/message-alice-signed-encrypted.asc \
--sign --encrypt --recipient bob@example.com workspace/alice/message.txt

echo "Message signé et chiffré créé."
