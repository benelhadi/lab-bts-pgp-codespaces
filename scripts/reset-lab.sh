#!/bin/bash
set -e

rm -rf workspace/alice/.gnupg-alice
rm -rf workspace/bob/.gnupg-bob
rm -f workspace/preuves/*
touch workspace/preuves/.gitkeep

rm -f workspace/alice/message.txt
rm -f workspace/bob/reponse.txt

bash scripts/init-lab.sh

echo "Lab réinitialisé."
