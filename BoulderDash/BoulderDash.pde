Player joueur;
Wall mur;

int taille = 60;

void setup() {
  joueur = new Player(loadImage("assets/bulbizarre.png"));
  mur = new Wall(4, 4, loadImage("assets/wall_balec.png"));

  size(800, 800);
}

void keyPressed() {
  Vector mouvement = new Vector(
    int(keyCode == LEFT) - int(keyCode == RIGHT), 
    int(keyCode == UP) - int(keyCode == DOWN));

  mur.move(mouvement);
}

void draw() {
  translate(width/2, height/2);
  background(1);

  mur.display();
  joueur.display();
}
