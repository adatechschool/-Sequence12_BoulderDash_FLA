class Position {
  int x, y;
  Position (int xCoord, int yCoord) {
    x = xCoord;
    y = yCoord;
  }

  boolean equals(Position position) {
    return ((x == position.x) && (y == position.y));
  }

  Position add(Position position) {
    return new Position(x + position.x, y + position.y);
  }
}
