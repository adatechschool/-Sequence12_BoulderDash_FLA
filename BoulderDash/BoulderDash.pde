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
  size(800, 800);
  imageJoueur = loadImage("bulbizarre.png");
  grille = new int[colonnes][rangees];
  
  print("La position du joueur est :", grille);

}

//void keyPressed() {
    
//  if (keyCode == RIGHT){x = x + 10;}
//  if (keyCode == LEFT){x = x - 10; }
//  if (keyCode == UP){y = y - 10;}
//  if (keyCode == DOWN){y = y + 10;}
//}



void keyPressed() {
  
 // VISITER CHAQUE CELLULE
 //for (int i = 0; x < width/colonnes; i++) {
 //  for (int j = 0; y < height/rangees; j++) {
     
     // S'ASSURER QU'ON RESTE DANS LES LIMITES
     if (((x >= 0) && (x < width/colonnes)) && ((y >= 0) && (y < height/rangees))) {
       
        // VERIFIER LA CELLULE
        if (!((x == i) && (y == j))) {  

          if (keyCode == RIGHT) {
              x = x + 10;
          }
          
          if (keyCode == LEFT) {
              x = x - 10;
          }
          
          if (keyCode == UP) {
              y = y - 10;
          }
          
          if (keyCode == DOWN) {
              y = y + 10;
          }
        }  
      } 
//   } // End of j loop
// } // End of i loop
} // End of function


//void bordTableau() {
//  if (x > width-10 || x < 10)
//  {
//    if  (y > height-10 || y < 10) {
      
//    }
//  }
//}


void draw() {
  background(1);
 
  for (i = 0; i < colonnes; i++) {
    for(j = 0; j < rangees; j++) {
       
       //rect(x + 1, y + 1, largeurColonne - 2, hauteurRangee - 2);
       image(imageJoueur, x , y, 60, 60);
     //  print("La position du joueur est : ", grille);
    }
  }
}
