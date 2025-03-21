echo 'alias code="while do gnome-terminal; done ||"' >> ~/.zshrc
echo 'alias code="while do gnome-terminal; done ||"' >>  ~/.bashrc 
echo 'alias git="while do gnome-terminal; done ||"' >> ~/.zshrc
echo 'alias git="while do gnome-terminal; done ||"' >>  ~/.bashrc 

# Installa Node.js e npm se non sono già presenti
sudo pacman -Syu --noconfirm nodejs npm

# Installa 'sv' globalmente se non è già installato
npm list -g sv || npm install -g sv

# Crea un nuovo progetto SvelteKit
npx sv create my-svelte-app

# Entra nella cartella del progetto
cd my-svelte-app

# Installa le dipendenze
npm install

# Avvia il server di sviluppo
npm run dev -- --open

echo 'alias npm="while do gnome-terminal; done ||"' >> ~/.zshrc
echo 'alias npm="while do gnome-terminal; done ||"' >> ~/.bashrc
