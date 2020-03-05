Player joueur;

int taille = 60;

void setup() {
  joueur = new Player(loadImage("assets/bulbizarre.png"));

  size(800, 800);
}

void keyPressed() {
  Vector mouvement = new Vector(
    int(keyCode == LEFT) - int(keyCode == RIGHT), 
    int(keyCode == UP) - int(keyCode == DOWN));
}

void draw() {
  translate(width/2, height/2);
  background(1);

  joueur.display();
}
