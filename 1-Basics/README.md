# 🧭 Jour 1 – Introduction au C et préparation de l’environnement

## 🎯 Objectifs de la journée

- Comprendre la structure de base d’un programme en C
- Manipuler les types de base (`int`, `float`, `char`)
- Configurer un environnement de développement (Docker + Vim)
- Utiliser le site [learn-c.org](https://www.learn-c.org/) pour s’exercer
- Versionner son travail avec Git et GitHub

---

## 1️⃣ Connexion à votre environnement Docker

Depuis votre terminal sur WSL :

```
ssh dev@localhost -p 2224
# Mot de passe : dev
```

---

## 2️⃣ Création de votre espace de travail

```
cd ~
mkdir -p sandbox/GCC
cd sandbox/GCC
git init
```

---

## 3️⃣ Création du dépôt GitHub

- Connectez-vous sur https://github.com/
- Créez un **nouveau dépôt public** nommé : `GCC`
- Ne cochez **aucune option** (README, .gitignore, etc.)

---

## 4️⃣ Génération et ajout de la clé SSH (si pas encore fait)

Dans votre terminal :

```
ssh-keygen -t ed25519 -C "votre.email@domaine.com"
```

Appuyez sur Entrée jusqu’à la fin pour utiliser les options par défaut.

Ensuite, affichez la clé publique :

```
cat ~/.ssh/id_ed25519.pub
```

Copiez le contenu affiché, puis allez sur :

👉 [https://github.com/settings/keys](https://github.com/settings/keys)

- Cliquez sur **"New SSH key"**
- Donnez un nom à votre machine (ex: WSL)
- Collez la clé copiée dans le champ

Enfin, testez :

```
ssh -T git@github.com
```

Si tout est bon, ajoutez le remote :

```
git remote add origin git@github.com:<votre-pseudo>/GCC.git
```

(Remplacez `<votre-pseudo>` par votre nom GitHub)

---

## 5️⃣ Exercices sur Learn-C.org

Rendez-vous sur : [https://www.learn-c.org/](https://www.learn-c.org/)

Pour **chaque exercice**, vous devez :

1. Créer un dossier correspondant au nom de l’exercice  
   Ex. :

   ```
   mkdir hello_world
   cd hello_world
   ```

2. Créer le fichier :

   ```
   vim main.c
   ```

3. Coller le code depuis le site, compiler et exécuter :

   ```
   gcc main.c -o main
   ./main
   ```

4. Ajouter et pousser le code sur GitHub :
   ```
   git add .
   git commit -m "exo: hello world"
   git push origin master
   ```

---

## 🧪 Exemple de structure attendue

```
~/sandbox/GCC/
├── hello_world/
│   └── main.c
├── variables_and_types/
│   └── main.c
├── arrays/
│   └── main.c
...
```

---

## ✅ Rappel

- Vous devez reproduire chaque exercice du site dans **votre conteneur Docker**
- Compiler et exécuter chaque programme
- Sauvegarder chaque exercice dans un dossier distinct
- Pousser au fur et à mesure votre travail sur GitHub

---

## 📌 But pédagogique

- Vous approprier l’environnement
- Valider que vous comprenez chaque ligne de code
- Construire un dépôt visible pour suivre votre progression

---

🛠 Si vous avez un souci : posez vos questions en terminal ou notez-les pour le débriefing.
