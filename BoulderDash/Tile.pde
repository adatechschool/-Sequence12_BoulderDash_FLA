class Tile implements Collision {
  PImage sprite;
  Vector position;

  void move_and_collide(Vector vector) {
    position = position.add(vector);
  }
  
  void display() {
    if (sprite != null) {
      image(sprite, taille * position.x, taille * position.y, taille, taille);
    }
  }
}
