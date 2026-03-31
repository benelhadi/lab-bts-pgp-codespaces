# lab-bts-pgp-codespaces

## Objectif
Mettre en œuvre un prototype PGP/GPG pour :
- signer un message ;
- chiffrer un message ;
- vérifier une signature ;
- déchiffrer un message.

## Lancement rapide

Dans le terminal :

    bash scripts/run-demo.sh

## Étapes détaillées

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

## Documents disponibles
- `docs/01-contexte.md`
- `docs/02-consignes.md`
- `docs/02-consignes-etudiants.md`
- `docs/03-questions.md`
- `docs/05-grille-evaluation-bts.md`

## Dossiers
- `docs/` : consignes et contexte
- `scripts/` : scripts du TP
- `workspace/` : zone de travail et preuves
