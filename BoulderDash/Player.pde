class Player extends Tile {
  Player (PImage image) {
    position = new Vector(0, 0);
    sprite = image;
  }
  
  void move(Vector vector){};
}
