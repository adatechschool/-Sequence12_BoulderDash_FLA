class Tile {
  PImage sprite;
  Position position;
  
  void draw() {
    image(sprite, taille * position.x, taille * position.y, taille, taille);
  }
}
