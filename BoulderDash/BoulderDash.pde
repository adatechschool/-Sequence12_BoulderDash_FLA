int colonnes = 5;
int rangees = 5;

int[][] grille;
PImage imageJoueur; 

int i = 0;
int j = 0;

int largeurColonne = width/colonnes;
int hauteurRangee = height/rangees;

int x = i * largeurColonne;
int y = j * hauteurRangee;



void setup() {
  size(400, 400);
  imageJoueur = loadImage("bulbizarre.png");
  grille = new int[colonnes][rangees];
}

void keyPressed() {
    
  if (keyCode == RIGHT){x = x + 10;}
  if (keyCode == LEFT){x = x - 10; }
  if (keyCode == UP){y = y - 10;}
  if (keyCode == DOWN){y = y + 10;}
}




void draw() {
  background(1);

 
  for (i = 0; i < colonnes; i++) {
    for(j = 0; j < rangees; j++) {
       
       //rect(x + 1, y + 1, largeurColonne - 2, hauteurRangee - 2);
       image(imageJoueur, x , y, 60, 60);
       
      
  }
        
}
}
