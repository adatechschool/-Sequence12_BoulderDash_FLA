Player joueur;
Wall[] niveau = new Wall[16];

int taille = 60;

void setup() {
  joueur = new Player(loadImage("assets/bulbizarre.png"));

  PImage sprite_mur = loadImage("assets/wall_balec.png");
  for (int i = 0 ; i < 16 ; i++) {
    niveau[i] = new Wall(new Position(int(random(-10, 10)), int(random(-10, 10))), sprite_mur);
  }

  size(800, 800);
}

void keyPressed() {
  Position mouvement = new Position(
  int(keyCode == LEFT) - int(keyCode == RIGHT),
  int(keyCode == UP) - int(keyCode == DOWN));

  for(Wall wall: niveau) {
    wall.move(mouvement);
  }
}

void draw() {
  translate(width/2, height/2);
  background(1);

  joueur.draw();

  for(Wall wall: niveau) {
    wall.draw();
  }
}
