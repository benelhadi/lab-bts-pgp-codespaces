#!/bin/bash
set -e

bash scripts/reset-lab.sh
bash scripts/generate-demo-keys.sh
bash scripts/export-public-keys.sh
bash scripts/import-public-keys.sh
bash scripts/alice-sign.sh
bash scripts/bob-verify-alice.sh
bash scripts/alice-encrypt-for-bob.sh
bash scripts/bob-decrypt.sh
bash scripts/alice-sign-encrypt-for-bob.sh
bash scripts/bob-decrypt-verify.sh

echo "Démo terminée avec succès."
