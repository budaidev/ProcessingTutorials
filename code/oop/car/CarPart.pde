class CarPart {
  int x, y; // Position relative to the car

  CarPart(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    // Basic display functionality if needed
  }

  void move(int deltaX) {
    x += deltaX; // General method to update position horizontally
  }
}