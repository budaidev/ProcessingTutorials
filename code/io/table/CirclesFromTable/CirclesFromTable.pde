Table table; // Variable to store the table data

void setup() {
  size(400, 400); // Set the window size
  background(255); // Set the background color to white

  // Load the table
  table = loadTable("circleData.csv", "header"); // Ensure the table has a header row

  // Loop through each row of the table
  for (TableRow row : table.rows()) {
    int x = row.getInt("x"); // Get x position
    int y = row.getInt("y"); // Get y position
    int radius = row.getInt("radius"); // Get the radius
    String colorHex = row.getString("color"); // Get the color in hex format
    int c = unhex("FF" + colorHex.substring(1)); // Convert hex color to integer

    fill(c); // Set the fill color for the circle
    noStroke(); // No border for the circle
    ellipse(x, y, radius*2, radius*2); // Draw the circle
  }
}

void draw() {
  // No drawing commands needed after setup for this example
}
