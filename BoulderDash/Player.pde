class Player extends Tile {
  Player (PImage image) {
    position = new Vector(0, 0);
    sprite = image;
  }
  
  void move_and_collide(Vector vector, Tile[] tiles) {
    for (Tile collider: tiles) {
      if (position.add(vector).equals(collider.position)) {
        return;
      }
    }
    position = position.add(vector);
  }
}
