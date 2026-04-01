# Correction rédigée - Questions d'analyse

## 1. Quelle différence faites-vous entre signature numérique et chiffrement ?

La **signature numérique** permet de vérifier qu'un message :
- provient bien du détenteur de la clé privée associée ;
- n'a pas été modifié depuis son émission.

Elle apporte donc principalement :
- l'**intégrité** ;
- l'**authenticité technique**.

Le **chiffrement**, en revanche, a pour but de rendre le contenu du message illisible pour toute personne non autorisée.  
Il apporte donc principalement la **confidentialité**.

En résumé :
- **signature** = prouver l'origine et l'intégrité ;
- **chiffrement** = protéger le contenu contre la lecture non autorisée.

---

## 2. Quelles garanties apporte la signature d'un message ?

La signature numérique apporte plusieurs garanties :

- **Intégrité** : si le message est modifié, la signature ne sera plus valide ;
- **Authenticité technique** : le message a été signé avec la clé privée de l'émetteur ;
- **Traçabilité** : la signature laisse une trace technique vérifiable.

Cependant, cette garantie dépend du fait que :
- la clé privée n'a pas été compromise ;
- l'identité du signataire soit bien reliée à la clé utilisée.

---

## 3. Quelles garanties apporte le chiffrement d'un message ?

Le chiffrement apporte la **confidentialité**.  
Cela signifie que seul le destinataire disposant de la clé privée correspondante peut lire le message.

Le chiffrement ne garantit pas à lui seul :
- l'identité de l'émetteur ;
- l'intégrité au sens d'une preuve d'origine.

Pour cela, il faut associer le chiffrement à une signature.

---

## 4. Pourquoi faut-il échanger les clés publiques ?

Les clés publiques doivent être échangées pour permettre :

- le **chiffrement** d'un message à destination d'un utilisateur ;
- la **vérification** d'une signature émise par cet utilisateur.

Par exemple :
- Alice a besoin de la clé publique de Bob pour lui envoyer un message chiffré ;
- Bob a besoin de la clé publique d'Alice pour vérifier sa signature.

Sans échange de clés publiques, il n'est pas possible de mettre en œuvre correctement PGP/GPG.

---

## 5. Quel est le rôle de l'empreinte de clé ?

L'empreinte de clé est un identifiant unique dérivé de la clé publique.  
Elle permet de vérifier que la clé reçue est bien celle attendue.

Elle est utile pour :
- éviter les erreurs d'échange ;
- vérifier qu'une clé n'a pas été remplacée ;
- confirmer l'identité d'un correspondant lors d'un échange de clés.

En pratique, comparer une empreinte de clé est une bonne méthode pour valider une clé publique.

---

## 6. Pourquoi GPG affiche-t-il un avertissement sur la confiance dans la clé ?

GPG peut indiquer qu'une signature est **bonne**, tout en précisant qu'il n'existe pas de preuve suffisante que la clé appartient réellement à la personne nommée.

Cela signifie que :
- la signature cryptographique est valide ;
- mais la relation entre la clé et l'identité du propriétaire n'a pas été certifiée dans une chaîne de confiance.

Cet avertissement rappelle qu'en sécurité, il faut distinguer :
- la validité cryptographique ;
- le niveau de confiance accordé à l'identité annoncée.i

---

## 7. En quoi cette solution contribue-t-elle à renforcer les moyens de preuve numériques ?

PGP/GPG renforce les moyens de preuve numériques car il permet de démontrer techniquement :

- qu'un message n'a pas été modifié ;
- qu'un message a été signé avec une clé privée donnée ;
- qu'un message a été chiffré pour un destinataire précis.

Cela améliore :
- la **fiabilité** des échanges ;
- la **traçabilité** ;
- la **sécurisation des preuves techniques**.

Toutefois, la valeur probante dépend aussi :
- des procédures de gestion des clés ;
- de la conservation des traces ;
- du contexte organisationnel et juridique.

---

## 8. Quelles sont les limites juridiques de ce dispositif ?

PGP/GPG apporte une preuve technique solide, mais ne suffit pas à lui seul à garantir une conformité juridique totale.

Ses limites juridiques sont notamment :

- la difficulté à prouver formellement l'identité réelle du signataire ;
- l'absence éventuelle de tiers de confiance ;
- la dépendance à la bonne protection des clés privées ;
- la nécessité de procédures de conservation et d'horodatage.

Ainsi, la preuve technique existe, mais sa valeur devant une juridiction dépendra du contexte, de la politique de sécurité et de la qualité des procédures mises en place.

---

## 9. Pourquoi une signature PGP n'est-elle pas automatiquement une signature électronique qualifiée ?

Une signature PGP repose sur des mécanismes cryptographiques efficaces, mais elle n'est pas automatiquement une **signature électronique qualifiée**.

Une signature qualifiée suppose généralement :
- une vérification forte de l'identité ;
- l'intervention d'un prestataire de confiance qualifié ;
- un cadre réglementaire précis ;
- des dispositifs répondant à des exigences normatives.

PGP, utilisé seul dans un cadre interne ou pédagogique, ne répond pas automatiquement à ces exigences.  
Il s'agit donc plutôt d'une **signature technique** que d'une signature électronique qualifiée au sens réglementaire.

---

## 10. Quelles bonnes pratiques recommanderiez-vous pour un déploiement en entreprise ?

Pour un déploiement sérieux en entreprise, il faut recommander :

- protéger les clés privées avec une phrase de passe robuste ;
- mettre en place une procédure d'échange et de vérification des clés publiques ;
- documenter la gestion du cycle de vie des clés ;
- prévoir la révocation des clés en cas de compromission ;
- former les utilisateurs ;
- conserver les preuves et journaux associés ;
- définir une politique de sécurité claire ;
- associer la solution à des procédures de conformité et d'archivage.

En résumé, PGP/GPG est pertinent, mais son efficacité dépend fortement de l'organisation mise en place autour de la technologie.

---

# Conclusion générale attendue

Le TP montre que PGP/GPG permet :
- de signer des messages ;
- de chiffrer des messages ;
- de vérifier l'intégrité et l'origine technique d'un échange ;
- de renforcer la fiabilité des preuves numériques.

Cependant, il montre aussi que la sécurité technique ne suffit pas à elle seule :
- la confiance dans l'identité ;
- la gestion des clés ;
- les procédures de conservation ;
- le cadre juridique

sont indispensables pour donner une véritable valeur probante à l'ensemble.
