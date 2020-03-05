class Player extends Tile {
  int score = 0;

  Player (PImage image) {
    position = new Vector(0, 0);
    sprite = image;
  }
  
  void move_and_collide(Tile[] tiles, Vector vector) {
    for (Tile collider: tiles) {
      if (position.add(vector).equals(collider.position)) {
        return;
      }
    }
    position = position.add(vector);
  }

  void collect_diamond(ArrayList<Diamond> diamonds) {
    for (int i = 0; i < diamonds.size(); i++) {
      if (position.equals(diamonds.get(i).position)) {
        score += 1;
        println(score);
        diamonds.remove(i);
      }
    }
  }
}
