#!/bin/bash
set -e

mkdir -p workspace/alice workspace/bob workspace/preuves

cat > workspace/alice/message.txt <<'EOM'
Bonjour Bob,

Voici le compte rendu de la veille technologique sur PGP.
Merci de vérifier la signature et le contenu du message.

Cordialement,
Alice
EOM

cat > workspace/bob/reponse.txt <<'EOM'
Bonjour Alice,

J'ai bien reçu ton message.
Je vais vérifier la signature puis analyser les garanties de sécurité.

Cordialement,
Bob
EOM

echo "Lab initialisé."
tree workspace
