Player joueur;
Wall[] level = new Wall[16];

int taille = 60;

void setup() {
  PImage mur = loadImage("assets/wall_balec.png");
  joueur = new Player(loadImage("assets/bulbizarre.png"));
  for (int i = 0 ; i < 16 ; i++) {
    level[i] = new Wall(new Position(int(random(-10, 10)), int(random(-10, 10))), mur);
  }
  size(800, 800);
}

void keyPressed() {
  Position mouvement = new Position(
  int(keyCode == LEFT) - int(keyCode == RIGHT),
  int(keyCode == UP) - int(keyCode == DOWN));

  for(Wall wall: level) {
    wall.move(mouvement);
  }
}

void draw() {
  translate(width/2, height/2);
  background(1);

  joueur.draw();

  for(Wall wall: level) {
    wall.draw();
  }
}
