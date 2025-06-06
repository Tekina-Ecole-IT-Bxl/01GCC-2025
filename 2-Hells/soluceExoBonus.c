#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  int joueur, ordi;
  char *choix[] = {"", "Pierre", "Papier", "Ciseaux"};

  srand(time(NULL));

  printf("Choisis :\n1. Pierre\n2. Papier\n3. Ciseaux\nTon choix : ");
  scanf("%d", &joueur);

  if (joueur < 1 || joueur > 3) {
    printf("Choix invalide.\n");
    return 1;
  }

  ordi = rand() % 3 + 1;

  printf("Tu as choisi : %s\n", choix[joueur]);
  printf("L'ordinateur a choisi : %s\n", choix[ordi]);

  if (joueur == ordi) {
    printf("Égalité\n");
  } 
  else if ((joueur == 1 && ordi == 3) || (joueur == 2 && ordi == 1) || (joueur == 3 && ordi == 2)) {
    printf("Tu gagnes !\n");
  } else {
    printf("Tu perds !\n");
  }

  return 0;
}