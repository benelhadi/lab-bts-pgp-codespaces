# TP - Déployer des moyens de preuves sécurisés avec PGP/GPG

## 1. Contexte

Dans le cadre d'une veille technologique sur la sécurisation des courriels, vous devez mettre en œuvre une solution de type **PGP/GPG** dans un environnement prototype.

L'objectif est de montrer en quoi cette solution permet de :
- protéger la confidentialité des messages ;
- garantir l'intégrité des échanges ;
- authentifier l'émetteur ;
- renforcer les moyens de preuve numériques.

---

## 2. Objectifs du TP

À l'issue du travail, vous devrez être capable de :

- générer une paire de clés cryptographiques ;
- exporter et importer une clé publique ;
- signer un message ;
- vérifier une signature ;
- chiffrer un message ;
- déchiffrer un message ;
- expliquer les apports et les limites de PGP/GPG dans un contexte professionnel.

---

## 3. Ressources disponibles

Le dépôt contient :
- un dossier `scripts/` avec les scripts d'exécution ;
- un dossier `workspace/` avec les espaces de travail d'Alice et Bob ;
- un dossier `preuves/` destiné à stocker les fichiers produits ;
- un dossier `docs/` avec le contexte et les questions.

---

## 4. Travail demandé

### Étape 1 - Réinitialiser le lab
Exécuter :

    bash scripts/reset-lab.sh

Vérifier la structure du dossier de travail :

    tree workspace

---

### Étape 2 - Générer les clés d'Alice et Bob
Exécuter :

    bash scripts/generate-demo-keys.sh

Objectif :
- créer une paire de clés pour Alice ;
- créer une paire de clés pour Bob.

---

### Étape 3 - Exporter les clés publiques
Exécuter :

    bash scripts/export-public-keys.sh

Vérifier ensuite la présence des fichiers dans `workspace/preuves/`.

---

### Étape 4 - Importer les clés publiques
Exécuter :

    bash scripts/import-public-keys.sh

Objectif :
- Alice doit disposer de la clé publique de Bob ;
- Bob doit disposer de la clé publique d'Alice.

---

### Étape 5 - Signer un message
Exécuter :

    bash scripts/alice-sign.sh

Objectif :
- produire un message signé par Alice ;
- garantir l'intégrité du message ;
- permettre à Bob de vérifier l'origine du message.

---

### Étape 6 - Vérifier la signature
Exécuter :

    bash scripts/bob-verify-alice.sh

Observer le résultat :
- signature valide ;
- empreinte de la clé ;
- avertissement éventuel sur le niveau de confiance.

---

### Étape 7 - Chiffrer un message pour Bob
Exécuter :

    bash scripts/alice-encrypt-for-bob.sh

Objectif :
- rendre le message lisible uniquement par Bob.

---

### Étape 8 - Déchiffrer le message
Exécuter :

    bash scripts/bob-decrypt.sh

Observer le message obtenu.

---

### Étape 9 - Signer et chiffrer
Exécuter :

    bash scripts/alice-sign-encrypt-for-bob.sh

Objectif :
- garantir la confidentialité ;
- garantir l'intégrité ;
- permettre la vérification de l'émetteur.

---

### Étape 10 - Déchiffrer et vérifier
Exécuter :

    bash scripts/bob-decrypt-verify.sh

Observer :
- le contenu du message ;
- la validité de la signature ;
- les informations liées à la clé d'Alice.

---

## 5. Vérifications finales

Exécuter :

    tree workspace
    ls -l workspace/preuves

Vous devez obtenir plusieurs fichiers de preuve, par exemple :
- `alice_pub.asc`
- `bob_pub.asc`
- `message-alice-signed.asc`
- `message-alice-to-bob.asc`
- `message-alice-signed-encrypted.asc`

---

## 6. Questions d'analyse

Répondez de façon argumentée aux questions suivantes :

1. Quelle différence faites-vous entre **signature numérique** et **chiffrement** ?
2. Quelles garanties apporte la **signature** d'un message ?
3. Quelles garanties apporte le **chiffrement** d'un message ?
4. Pourquoi faut-il **échanger les clés publiques** ?
5. Quel est le rôle de l'**empreinte de clé** ?
6. Pourquoi GPG affiche-t-il un avertissement sur la confiance dans la clé ?
7. En quoi cette solution contribue-t-elle à renforcer les **moyens de preuve numériques** ?
8. Quelles sont les **limites juridiques** de ce dispositif ?
9. Pourquoi une signature PGP n'est-elle pas automatiquement une **signature électronique qualifiée** ?
10. Quelles bonnes pratiques recommanderiez-vous pour un déploiement en entreprise ?

---

## 7. Livrables attendus

Chaque binôme ou étudiant doit fournir :

### Livrable 1 - Captures ou traces techniques
- exécution des commandes ;
- preuve de génération des clés ;
- preuve de signature ;
- preuve de chiffrement ;
- preuve de déchiffrement.

### Livrable 2 - Compte rendu technique
Le compte rendu doit contenir :
- le but du TP ;
- les commandes exécutées ;
- les résultats obtenus ;
- les difficultés rencontrées ;
- une conclusion technique.

### Livrable 3 - Analyse
Rédiger une synthèse expliquant :
- les intérêts de PGP/GPG ;
- ses limites ;
- son apport pour la sécurisation des preuves numériques.

---

## 8. Conclusion attendue

Vous devez montrer que :
- PGP/GPG améliore la confidentialité des échanges ;
- PGP/GPG permet de vérifier l'intégrité d'un message ;
- PGP/GPG permet d'associer un message à une clé privée donnée ;
- la valeur de preuve dépend aussi de l'organisation, de la gestion des clés et du niveau de confiance accordé à l'identité du signataire.
