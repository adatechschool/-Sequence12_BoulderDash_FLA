class Tile {
  PImage sprite;
  Position position;
  int collisionLayer;

  void draw() {
    image(sprite, taille * position.x, taille * position.y, taille, taille);
  }
}
