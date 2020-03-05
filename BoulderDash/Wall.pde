class Wall extends Tile implements Physics {
  Wall (Vector initialPos, PImage image) {
    position = initialPos;
    sprite = image;
  }

  Wall (int x, int y, PImage image) {
    position = new Vector(x, y);
    sprite = image;
  }

  void move(Vector vector) {
    position = position.add(vector);
  }
  void move(int x, int y) {
    position = position.add(new Vector(x, y));
  }
}
