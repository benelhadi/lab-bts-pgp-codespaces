#!/bin/bash
set -e

GNUPGHOME=workspace/alice/.gnupg-alice \
gpg --yes --armor --output workspace/preuves/message-alice-signed.asc \
--clearsign workspace/alice/message.txt

echo "Message signé par Alice créé."
