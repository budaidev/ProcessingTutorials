class Car {
  int x, y; // Position of the car
  CarPart[] parts; // composition, the car contains car parts
  
  Car(int x, int y) {
    this.x = x;
    this.y = y;
    parts = new CarPart[]{
      new Wheel(x + 20, y, 20),
      new Wheel(x + 80, y, 20),
      new Headlight(x + 25, y - 40, 15, 10, true),
      new Backlight(x + 75, y - 40, 15, 10, true)
    };
  }

  void display() {
    fill(255, 0, 0); // Red color for the car body
    noStroke();      // No outline
    rect(x, y - 20, 100, 20);
    rect(x + 15, y - 40, 70, 20);

    // Display all parts
    for (CarPart part : parts) {
      part.display();
    }
  }

  void update(int newX) {
    int deltaX = newX - x;
    x = newX;
    for (CarPart part : parts) {
      part.move(deltaX); // Use the generalized move method in CarPart
    }
  }
}
