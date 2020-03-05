class Wall extends Tile {
  Wall(Vector initialPos, PImage image) {
    position = new Vector(initialPos.x, initialPos.y);
    sprite = image;
  }
}
