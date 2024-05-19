class Wheel extends CarPart {
  int diameter; // Diameter of the wheel

  Wheel(int x, int y, int diameter) {
    super(x, y); // Call the constructor of CarPart
    this.diameter = diameter;
  }

  void display() {
    fill(0); // Black color for the wheel
    ellipse(x, y, diameter, diameter);
  }
}