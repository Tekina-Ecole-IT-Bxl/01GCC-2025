# 🎯 Exercice Bonus – Rock Paper Scissors 🪨📄✂️

## 💡 Objectif

Créer un jeu console en C qui simule une partie de **Pierre – Papier – Ciseaux** entre un joueur et l’ordinateur.

👉 **+10 points bonus** pour les étudiant(e)s qui rendent une version propre et fonctionnelle avant le prochain cours !

---

## 🎮 Règles du jeu

- Le joueur choisit entre :
  - 1 → Pierre
  - 2 → Papier
  - 3 → Ciseaux
- L'ordinateur fait un choix aléatoire entre 1, 2 ou 3
- Le gagnant est déterminé comme suit :
  - Pierre bat Ciseaux
  - Ciseaux bat Papier
  - Papier bat Pierre
- Si les deux font le même choix, c’est un match nul

---

## 🧠 Logique du jeu

1. Afficher un menu proposant Pierre, Papier ou Ciseaux au joueur
2. Lire le choix du joueur au clavier
3. Générer un choix aléatoire pour l’ordinateur
4. Comparer les deux choix :
   - Si égalité → afficher "Égalité"
   - Sinon → afficher le vainqueur
5. Afficher un message indiquant les choix de chacun et le résultat

---

## 📁 Organisation attendue

- Crée un dossier dans ton dépôt :

```
cd ~/sandbox/GCC
mkdir pierre-feuille-ciseau
cd pierre-feuille-ciseau
```

- Crée ton fichier :

```
vim rps.c
```

---

## 🔧 Compilation & test

```
gcc rps.c -o rps
./rps
```

---

## 💾 Git – versionner et envoyer

```
git add pierre-feuille-ciseau
git commit -m "exo bonus: pierre feuille ciseau"
git push origin master
```

---

## 🏁 Bonus facultatif

- Ajouter une boucle pour jouer plusieurs manches
- Compter les victoires, défaites, égalités
- Afficher un score final après 3 ou 5 parties

---

## 🏅 Récompense

**+10 points bonus** pour ceux qui terminent proprement et poussent le code à temps sur GitHub.

Bonne chance ! 💪
