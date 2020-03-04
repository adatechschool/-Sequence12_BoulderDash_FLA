class Tile {
  PImage sprite;
  Position position;
  int collisionLayer = 0;

  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
