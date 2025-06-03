# 🐍 Exercice Bonus – Jeu Snake avec Raylib

## 💡 Objectif

Reproduire le célèbre jeu **Snake** en utilisant le langage C avec la bibliothèque **Raylib** pour l'affichage.

👉 **+10 points bonus** si le jeu fonctionne correctement et est versionné sur GitHub avant le prochain cours.

---

## 📦 Pré-requis techniques

- Avoir installé **Raylib** dans votre Docker ou sur votre système WSL.
- Compilation : utiliser l’option `-lraylib -lm` à la fin de votre commande `gcc`.

---

## 🎮 Règles du jeu

- Le joueur contrôle un serpent sur une grille.
- Le serpent grandit à chaque fruit mangé.
- Le jeu se termine si le serpent touche un mur ou lui-même.
- Le but est de survivre le plus longtemps possible et de manger un maximum de fruits.

---

## 🧠 Logique complète à suivre

Voici toutes les **étapes logiques** nécessaires pour créer votre propre jeu Snake :

---

### 1. Initialisation

- Définir la taille de la fenêtre (ex. : 800x600)
- Définir la taille des cases de la grille (ex. : 20x20)
- Définir la vitesse du jeu (ex. : 10 images par seconde)
- Créer :
  - Une variable pour stocker la direction actuelle (`haut`, `bas`, `gauche`, `droite`)
  - Un tableau pour représenter le corps du serpent (ex : un tableau de positions `x/y`)
  - Une variable pour la taille du serpent
  - Une variable pour le fruit (position `x/y`)
  - Un score

---

### 2. Boucle principale

Utiliser une boucle `while (!WindowShouldClose())` dans laquelle :

#### a. Gérer les touches du clavier

- Si `flèche haut`, changer la direction en haut
- Si `flèche bas`, changer en bas
- Empêcher d’aller dans la direction opposée directe (ex : pas haut ↔ bas)

#### b. Déplacer le serpent

- Ajouter une nouvelle case en tête du tableau (nouvelle position selon la direction)
- Supprimer la dernière case si le serpent n’a pas mangé (pour simuler un déplacement)

#### c. Vérifier les collisions

- Collision avec le mur (ex : `position.x < 0 || position.x > largeur_grille`)
- Collision avec son propre corps (boucle sur toutes les cases du corps)

#### d. Vérifier si le fruit est mangé

- Si la tête touche le fruit :
  - Ne pas supprimer la dernière case → le serpent grandit
  - Générer une nouvelle position aléatoire pour le fruit
  - Augmenter le score

#### e. Dessiner les éléments

- Effacer l’écran (`BeginDrawing()` + `ClearBackground()`)
- Dessiner :
  - Le serpent (chaque case du tableau)
  - Le fruit
  - Le score affiché à l’écran
- Fin du dessin (`EndDrawing()`)

---

### 3. Fin du jeu

- Si collision détectée → afficher un message ("Game Over") puis fermer la fenêtre ou proposer de recommencer
- Afficher le score final

---

## 📁 Organisation attendue

Créer le dossier et fichier :

```bash
cd ~/sandbox/GCC
mkdir snake
cd snake
vi snake.c
```

---

## 🔧 Compilation

```bash
gcc snake.c -o snake -lraylib -lm
./snake
```

---

## 💾 Git

```bash
git add snake
git commit -m "exo bonus: snake avec raylib"
git push origin master
```

---

## 🏁 Bonus possibles

- Ajouter plusieurs fruits
- Ajouter des obstacles
- Ajouter un compteur de temps ou un score max
- Ajouter un son avec Raylib (`LoadSound`, `PlaySound`)

---

## 🏅 Récompense

✅ **25 points bonus** si le jeu fonctionne, est lisible, compilé sans erreur et bien structuré sur GitHub !
