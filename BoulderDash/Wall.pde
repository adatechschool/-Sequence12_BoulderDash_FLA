class Wall extends Tile {
  Wall(Vector initialPos, PImage image) {
//    for(int i = 0 ; i < 
    position = new Vector(initialPos.x, initialPos.y);
    sprite = image;
  }
}
