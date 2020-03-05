Player joueur;
Wall[] niveau = new Wall[16];

int taille = 60;

void setup() {
  PImage sprite_mur = loadImage("assets/wall_balec.png");
  joueur = new Player(loadImage("assets/bulbizarre.png"));
  for(int i = 0; i < 16; i++) {
    niveau[i] = new Wall(new Vector(i*2, (i-3)*4), sprite_mur);
  }
  
  size(800, 800);
}

void draw() {
  translate(width/2 - joueur.position.x * taille, height/2 - joueur.position.y * taille);
  background(1);

  for(Wall mur: niveau) {
    mur.display();
  }
  joueur.display();
}

void keyPressed() {
  Vector mouvement = new Vector(
    int(keyCode == RIGHT) - int(keyCode == LEFT), 
    int(keyCode == DOWN) - int(keyCode == UP));
  joueur.move_and_collide(new int, niveau);
}
