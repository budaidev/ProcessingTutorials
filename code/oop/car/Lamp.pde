class Lamp extends CarPart {
  int width, height; // Dimensions of the lamp
  boolean isOn; // State of the lamp (on or off)

  Lamp(int x, int y, int width, int height, boolean isOn) {
    super(x, y);
    this.width = width;
    this.height = height;
    this.isOn = isOn;
  }

  void display() {
    // Implementation in subclasses
  }
}