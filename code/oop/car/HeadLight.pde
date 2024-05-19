class Headlight extends Lamp {
  Headlight(int x, int y, int width, int height, boolean isOn) {
    super(x, y, width, height, isOn);
  }

  void display() { // method override
    if (isOn) {
      fill(255, 255, 0); // Yellow light when on
    } else {
      fill(80); // Dark gray when off
    }
    ellipse(x, y, width, height);
  }
}
