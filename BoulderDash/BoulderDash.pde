Player joueur;
Wall mur;

int taille = 60;

void setup() {
  joueur = new Player(loadImage("assets/bulbizarre.png"));
  mur = new Wall(new Vector(4, 4), loadImage("assets/wall_balec.png"));

  size(800, 800);
}

void keyPressed() {
  Vector mouvement = new Vector(
    int(keyCode == RIGHT) - int(keyCode == LEFT), 
    int(keyCode == DOWN) - int(keyCode == UP));

  joueur.move(mouvement);
}

void draw() {
  translate(width/2 - joueur.position.x * taille, height/2 - joueur.position.y * taille);
  background(1);

  mur.display();
  joueur.display();
}
