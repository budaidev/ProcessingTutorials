class Backlight extends Lamp {
  Backlight(int x, int y, int width, int height, boolean isOn) {
    super(x, y, width, height, isOn);
  }

  void display() { // method override
    if (isOn) {
      fill(255, 0, 0); // Red light when on
    } else {
      fill(50); // Darker red when off
    }
    ellipse(x, y, width, height);
  }
}
