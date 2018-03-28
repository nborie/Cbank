





#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
  int nb_term = argc-2;
  int* tab = (int*)malloc(nb_term*sizeof(int));
  int i;
  int val=atoi(argv[1]); /* valeur recherché */

  for (i=0 ; i<nb_term ; i++){
    tab[i] = atoi(argv[i+2]);
  }
  fprintf(stderr,"%d",nb_term);
  printf("position = %d\n", position(tab, nb_term, val));
  free(tab);
  return 0;
}
