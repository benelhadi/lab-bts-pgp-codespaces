#!/bin/bash
set -e

GNUPGHOME=workspace/bob/.gnupg-bob \
gpg --decrypt workspace/preuves/message-alice-signed-encrypted.asc
