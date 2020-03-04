class Wall extends Tile {
  Wall(Position initialPos, PImage image) {
    position = new Position(initialPos.x, initialPos.y);
    sprite = image;
  }

  void move(Position movement) {
    position = position.add(movement);
  }
}
