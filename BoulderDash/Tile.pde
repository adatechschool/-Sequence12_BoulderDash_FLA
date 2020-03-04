class Tile {
  PImage sprite;
  Position position;
  int collisionLayer;

  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
