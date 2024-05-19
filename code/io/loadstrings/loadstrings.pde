String[] lines; // Array to store lines from the file

void setup() {
  size(400, 400); // Set the window size
  background(255); // Set the background color to white

  // Load lines from the file
  lines = loadStrings("inputData.txt");

  // Modify each line to uppercase
  for (int i = 0; i < lines.length; i++) {
    lines[i] = lines[i].toUpperCase();
  }

  // Save modified lines to a new file
  saveStrings("outputData.txt", lines);

  // Display the new contents on the screen
  for (int i = 0; i < lines.length; i++) {
    text(lines[i], 10, 30 + i * 20); // Display each modified line
  }
}

void draw() {
  // No drawing commands needed after setup for this example
}
