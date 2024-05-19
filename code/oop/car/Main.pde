Car myCar;

void settings() {
    size(400, 200);
}

void setup() {
  myCar = new Car(150, 100);
}

void draw() {
  background(255);  // Clear the screen with a white background
  myCar.update(mouseX - 50);  // Update car position to follow the mouse
  myCar.display();  // Draw the car
}