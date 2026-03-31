#!/bin/bash
set -e

GNUPGHOME=workspace/bob/.gnupg-bob \
gpg --verify workspace/preuves/message-alice-signed.asc
