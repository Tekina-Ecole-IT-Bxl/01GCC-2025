# 🎯 Snake de base avec Raylib 🐍

## 💡 Objectif

Développer un jeu **Snake** en langage **C** avec la bibliothèque **Raylib**, dans un conteneur Docker.  
Cette version de base vous rapportera **jusqu’à 25 points** pour l’examen final.

---

## 🧰 Avant de commencer

1. **Cloner votre dépôt GitHub** dans `~/sandbox/GCC` :

```bash
cd ~/sandbox
mkdir -p GCC
cd GCC
git clone git@github.com:TON_USER/TON_DEPOT.git .
```

2. **Préparer votre environnement Docker avec Raylib** :

Vérifiez que vous avez :

- Une image Docker avec Raylib compilée depuis les sources
- Un conteneur lancé avec redirection X11 (pour afficher le jeu)
- Un utilisateur `dev` configuré avec `git`, `gcc`, `vim`, etc.

3. **Lancer le conteneur avec la bonne configuration** :

Utilisez un script ou une commande qui :

- Redirige la variable `DISPLAY` vers votre hôte
- Monte les volumes nécessaires
- Permet l'exécution graphique

---

## ✅ Étapes de développement

1. **Créer le dossier et le fichier source :**

```bash
cd ~/sandbox/GCC
mkdir snake
cd snake
vim snake.c
```

2. **Écrire le code** en suivant la logique minimale du jeu Snake.

3. **Compiler le jeu** avec Raylib :

```bash
gcc snake.c -o snake -lraylib -lm
```

4. **Lancer le jeu** :

```bash
./snake
```

> ⚠️ Si vous avez une erreur liée à `DISPLAY`, assurez-vous que l’affichage X11 est bien redirigé vers votre machine hôte (vous devez travailler sur une machine avec interface graphique, pas uniquement SSH).

---

## 🧠 Logique minimale à implémenter

1. Initialiser la fenêtre avec Raylib
2. Gérer le serpent et le fruit
3. Lire les touches du clavier
4. Déplacer le serpent
5. Vérifier les collisions (avec les murs et le corps)
6. Gérer les événements (fruit mangé, score)
7. Afficher tous les éléments (serpent, fruit, score)
8. Fermer le programme proprement

---

## 💾 Versionner votre travail avec Git

```bash
git add snake
git commit -m "Snake de base terminé"
git push origin master
```

---

## 🏆 Barème de notation

| Critère                                  | Points |
| ---------------------------------------- | ------ |
| Code fonctionnel et compilé              | +10    |
| Code propre, structuré et poussé sur Git | +15    |
| **TOTAL**                                | **25** |
