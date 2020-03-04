class Tile {
  PImage sprite;
  Position position;

  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
