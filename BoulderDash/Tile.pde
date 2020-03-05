class Tile {
  PImage sprite;
  Vector position;

  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
