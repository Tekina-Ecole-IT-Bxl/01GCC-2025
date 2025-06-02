# 🧪 TP – Devine le nombre (Jeu console)

## 🎯 Objectifs

- Utiliser les **conditions** et les **boucles**
- Gérer l'**entrée utilisateur**
- Comprendre la logique de **comparaison et répétition**

---

## 🕹️ Énoncé

Tu dois créer un **jeu en console** où :

1. Le programme **génère un nombre aléatoire** entre 1 et 100
2. L'utilisateur doit **deviner ce nombre**
3. À chaque tentative :
   - Si le nombre est trop petit → afficher "Trop petit !"
   - Si le nombre est trop grand → afficher "Trop grand !"
   - Si c'est le bon → afficher "Bravo ! Tu as trouvé en X essais"
4. Le jeu continue **jusqu’à ce que le bon nombre soit deviné**

---

## 📋 Algorithme suggéré

1. **Initialiser le générateur aléatoire**

   ```c
   srand(time(NULL)); // à inclure en début de programme
   ```

2. **Générer un nombre secret**

   ```c
   int secret = rand() % 100 + 1;
   ```

3. **Initialiser les variables**

   - `int essai` : pour stocker l'entrée de l'utilisateur
   - `int compteur` : pour compter le nombre de tentatives

4. **Boucle de jeu**

   - Tant que `essai` est différent de `secret` :
     - Demander un nombre à l'utilisateur avec `scanf`
     - Comparer avec `secret`
     - Afficher "Trop grand", "Trop petit", ou "Bravo"

5. **Fin du jeu**
   - Quand le bon nombre est trouvé, afficher le nombre total d’essais

---

## 🔧 Contraintes techniques

- Utiliser :
  - `#include <stdio.h>`
  - `#include <stdlib.h>`
  - `#include <time.h>`
- Boucle : `while`
- Lecture clavier : `scanf`

---

## 📁 Organisation

- Crée un fichier `devine.c` dans le dossier `day-2`
- Compile et teste ton jeu :

```bash
gcc devine.c -o devine
./devine
```

- Pousse le code sur GitHub :

```bash
git add devine.c
git commit -m "day-2: TP devine le nombre"
git push origin master
```

---

## 🏁 Bonus

- Ajouter une option pour rejouer après avoir gagné
- Ajouter une limite d’essais avec un message "Perdu ! Le nombre était X"
- Améliorer l'affichage avec des messages plus fun 😄

Bon code et amuse-toi !
