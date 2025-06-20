%%bash
# Fichier contenant la liste des domaines (un par ligne)
DOMAIN_FILE="domains.txt"

# Liste des ports web courants
PORTS="80 443 8000 8080 8081 8443 8888 8997 8999 9000 9443"

# Vérifier que le fichier existe
if [ ! -f "$DOMAIN_FILE" ]; then
  echo "Fichier $DOMAIN_FILE non trouvé."
  exit 1
fi

# Générer les combinaisons domaine:port et scanner avec httpx
while read DOMAIN; do
  for PORT in $PORTS; do
    echo "$DOMAIN:$PORT"
  done
done < "$DOMAIN_FILE" | /root/go/bin/httpx -silent -title -status-code -tech-detect

