class Tile implements Physics {
  PImage sprite;
  Vector position;

  void move(Vector vector) {
    position = position.add(vector);
  }
  
  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
