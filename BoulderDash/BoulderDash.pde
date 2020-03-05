Player joueur;
Wall[] niveau = new Wall[16];
ArrayList<Diamond> diamants = new ArrayList<Diamond>();

int taille = 60;

void setup() {
  PImage sprite_mur = loadImage("assets/stone.png");
  PImage sprite_diam = loadImage("assets/diams.png");
  joueur = new Player(loadImage("assets/bulbizarre.png"));

  for(int i = 0; i < 16; i++) {
    diamants.add(new Diamond(new Vector(i*3, (i-4)*5), sprite_diam));
  }
    
  for(int i = 0; i < 16; i++) {
    niveau[i] = new Wall(new Vector(i*2, (i-3)*4), sprite_mur);
  }

  size(800, 800);
}

void draw() {
  translate(width/2 - joueur.position.x * taille, height/2 - joueur.position.y * taille);
  background(1);

  for(Wall mur: niveau) { mur.display(); }
  for(Diamond diamant: diamants) { diamant.display(); }

  joueur.collect_diamond(diamants);
  joueur.display();
}

void keyPressed() {
  joueur.move_and_collide(niveau, new Vector(
    int(keyCode == RIGHT) - int(keyCode == LEFT), 
    int(keyCode == DOWN) - int(keyCode == UP)));
}
