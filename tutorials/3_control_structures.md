### Control Structures

Control structures are fundamental in programming, allowing you to dictate the flow of your Processing sketches. Below, you'll find explanations and examples of loops and conditional statements, which are essential for creating dynamic and responsive visualizations.

#### Loops
Loops in Processing are used to repeat a block of code multiple times. The most commonly used loops are `for` and `while`.

##### For Loop
A `for` loop is useful for iterating over a range of values, such as performing repetitive tasks with shapes or colors.

```java
void setup() {
    size(400, 400);
}

void draw() {
    background(255);
    for (int i = 0; i < width; i += 20) {
        fill(0);
        ellipse(i, height/2, 10, 10);
    }
}
```

##### While Loop
A `while` loop continues to execute as long as the specified condition is true. It's useful for repeating operations until a particular condition changes.

```java
void draw() {
    int i = 0;
    while (i < width) {
        line(i, 0, i, height);
        i += 20; // Increment i by 20
    }
}
```

#### Conditional Statements
Conditional statements check specific conditions and execute a block of code depending on the outcome. The most common types are `if`, `else`, and `else if`.

```java
void draw() {
    background(204);
    if (mouseX > width / 2) {
        fill(255, 0, 0); // Fill red if mouse is on the right side
    } else {
        fill(0, 0, 255); // Fill blue if mouse is on the left side
    }
    ellipse(mouseX, mouseY, 50, 50);
}
```

### Combining Loops and Conditional Statements
You can combine loops and conditional statements to create
