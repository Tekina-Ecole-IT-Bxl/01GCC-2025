# 🧠 Snake avec Raylib

⸻

## 🧱 Structure générale recommandée

Composant Type Description:

- main() Fonction principale Initialise le jeu, boucle principale, appelle les sous-fonctions
- InitGame() void Initialise toutes les variables, positions, score
- UpdateGame() void Met à jour la logique du jeu (direction, collisions, croissance)
- DrawGame() void Affiche le serpent, le fruit, le score
- CheckCollisions() bool Vérifie les collisions avec mur ou soi-même
- GenerateFruit() void Place le fruit à un emplacement libre et aléatoire
- ResetGame() void Réinitialise tous les paramètres pour rejouer

⸻

## 🔍 Détail de chaque fonction

⸻

### 🟢 InitGame()

Responsabilité : initialiser toutes les structures de données du jeu

Bonnes pratiques :

- Initialiser le serpent au centre
- Utiliser une structure Vector2 ou struct Position pour les coordonnées
- Initialiser le fruit en appelant GenerateFruit()
- Mettre gameOver = false, direction = RIGHT, length = 1

À inclure :

- Position initiale du serpent
- Direction de départ
- Score à 0
- Allocation mémoire (si dynamique) pour le corps du serpent

⸻

### 🔁 UpdateGame()

Responsabilité : mise à jour des déplacements, détection de fruit, mise à jour du corps

Étapes internes :

1. Lire les entrées clavier (IsKeyPressed)
2. Mettre à jour la direction (en empêchant les demi-tours)
3. Déplacer le serpent :
   - Ajouter une case devant selon la direction
   - Si fruit mangé : ne pas supprimer la queue
   - Sinon : retirer la dernière case 4. Vérifier collision (CheckCollisions) 5. Si fruit mangé :
   - Incrémenter score et longueur
   - Appeler GenerateFruit()

##### Bonnes pratiques :

- Utiliser un Timer ou frameCounter pour limiter la vitesse du serpent
- Ne pas déplacer le serpent à chaque frame (ex : 10 FPS logique, 60 FPS affichage)

⸻

### 📏 DrawGame()

Responsabilité : afficher tous les éléments visuels

Contenu :

- Dessiner la grille (optionnel)
- Afficher chaque segment du serpent (rectangle plein)
- Afficher le fruit (autre couleur ou icône)
- Afficher le score avec DrawText()
- Si gameOver, afficher un message centré

Bonnes pratiques :

- Utiliser BeginDrawing() / EndDrawing() proprement
- Choisir des couleurs cohérentes
- Mettre à l’échelle les éléments via CELL_SIZE pour adapter à n’importe quelle résolution

⸻

### 🚨 CheckCollisions()

Responsabilité : vérifier si le serpent est mort

Vérifications :

- Collision avec les murs (tête hors limites de la grille)
- Collision avec lui-même (tête touche un segment du corps)

Retour : true si collision, sinon false

Bonnes pratiques :

- Utiliser une fonction booléenne pure
- Passer uniquement ce qui est nécessaire (position de la tête + corps)

⸻

### 🍎 GenerateFruit()

Responsabilité : générer une position aléatoire pour le fruit

Étapes :

1. Tirer une position aléatoire dans les limites de la grille
2. Vérifier que cette position ne touche pas le serpent
3. Répéter tant qu’un emplacement libre n’est pas trouvé

Bonnes pratiques :

- Isoler cette logique dans une fonction
- Utiliser rand() % COLS et rand() % ROWS pour les coordonnées
- S’assurer que la génération est non-bloquante (ex : serpent remplit toute la grille)

⸻

### 🔄 ResetGame()

Responsabilité : permettre de rejouer sans fermer le programme

Contenu :

- Appeler InitGame()
- Réinitialiser score, direction, serpent, fruit

Bonnes pratiques :

- Ajouter une détection de touche (R) pour relancer une partie
- Afficher le message “Appuie sur R pour rejouer”

⸻

### 🧩 Structures de données recommandées

```c
#define MAX_LENGTH 100

typedef struct {
int x;
int y;
} Position;

typedef enum {
UP,
DOWN,
LEFT,
RIGHT
} Direction;

Position snake[MAX_LENGTH];
int snakeLength;
Position fruit;
Direction direction;
bool gameOver;
int score;
```

⸻

### 🧼 Best practices générales

Conseil Détail:

- 🧠 Séparer logique et affichage Aucune logique de jeu dans DrawGame()
- 🚫 Pas de variables globales partout Utiliser un GameState struct si besoin
- 🧪 Tester chaque fonction indépendamment Commencer par une version console
- 🧰 Modulariser Chaque fonction = 1 responsabilité
- 📚 Nommez clairement fruit, snakeHead, isCollision()… pas de x1, y2
