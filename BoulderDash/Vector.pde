class Vector {
  int x, y;

  Vector (int vecx, int vecy) {
    x = vecx;
    y = vecy;
  }

  boolean equals(Vector vector) {
    return ((x == vector.x) && (y == vector.y));
  }

  Vector add(Vector vector) {
    return new Vector(x + vector.x, y + vector.y);
  }
}
