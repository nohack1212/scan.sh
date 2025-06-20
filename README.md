# 🔍 Scanner de ports web avec httpx

Ce dépôt contient un script Bash (`scanner.sh`) permettant de scanner rapidement une liste de domaines sur des ports web courants, en utilisant l'outil [httpx](https://github.com/projectdiscovery/httpx).

## ✨ Fonctionnalités

- Lit des domaines depuis un fichier (`domains.txt`)
- Génère toutes les combinaisons `domaine:port` avec une liste de ports HTTP/HTTPS usuels
- Utilise `httpx` pour :
  - Vérifier si les services web sont actifs
  - Récupérer le code HTTP de réponse
  - Afficher le titre des pages web
  - Détecter les technologies utilisées

## 🔧 Prérequis

- Shell Bash
- [`httpx`](https://github.com/projectdiscovery/httpx) installé et accessible (par exemple via Go : `go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest`)
- Un fichier `domains.txt` contenant un domaine par ligne, par exemple :

