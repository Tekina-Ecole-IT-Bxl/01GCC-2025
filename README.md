# Environnement C avec Docker + SSH

## 🔧 Installation sous WSL (Windows Subsystem for Linux)

1. **Cloner le dépôt**

```
git clone https://github.com/Tekina-Ecole-IT-Bxl/01GCC-2025.git
```

Puis entrez dans le dossier:

```
cd 01GCC-2025
```

2. **Donner les droits d’exécution au script**

```
chmod +x run.sh
```

3. Lancer le conteneur

```

./run.sh
```

4. Se connecter en SSH

```
ssh dev@localhost -p 2224
```

#### => Mot de passe : dev

⸻

🎨 Configuration de Vim

Une fois connecté en SSH, crée le fichier .vimrc dans ton dossier personnel :

```
vim ~/.vimrc
```

Colle la configuration suivante :

```
syntax on
set number
set ruler
set cursorline
set showcmd
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set ignorecase
set smartcase
set incsearch
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set colorcolumn=80
set encoding=utf-8
```

Enregistre et quitte (:wq), puis relance vim pour appliquer la config.

⸻

📘 Introduction au langage C

Le langage C est un langage de programmation créé dans les années 70. C’est l’un des plus anciens encore utilisés aujourd’hui. Il est :
• Proche du système : il permet d’interagir directement avec la mémoire et le matériel.
• Performant : rapide, léger, utilisé dans des environnements où chaque ressource compte.
• Universel : c’est la base de nombreux autres langages comme C++, Java, Rust, Go…

✨ Applications du C
• Systèmes d’exploitation (Linux, Windows, macOS)
• Microcontrôleurs et systèmes embarqués
• Jeux vidéo (moteurs, moteurs physiques)
• Bases de données (MySQL, PostgreSQL)
• Logiciels critiques (réseaux, sécurité, BIOS…)

Le C est un excellent langage pour comprendre comment fonctionne réellement un ordinateur.
