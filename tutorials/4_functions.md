### Functions

Functions are a fundamental aspect of programming in Processing, allowing you to organize code into reusable blocks. This makes your code more modular, easier to manage, and scalable. Below, you will find a guide on how to define and use functions in Processing sketches.

#### Defining Functions
A function in Processing is defined using the `void` keyword followed by a unique function name and a pair of parentheses which may include parameters.

```java
void drawCircle(int x, int y, int size) {
    ellipse(x, y, size, size);
}
```

This function, `drawCircle`, takes three parameters—`x`, `y`, and `size`—and draws a circle at the specified position with the given size.

#### Calling Functions
Once defined, you can call or invoke your function from other parts of your sketch, such as within the `draw()` or `setup()` functions.

```java
void setup() {
    size(400, 400);
    background(255);
}

void draw() {
    drawCircle(width/2, height/2, 50); // Call function with arguments
}
```

#### Function Parameters
Parameters are variables that act as placeholders for the values that you pass to the function. This allows functions to perform tasks with different inputs.

```java
void setup() {
    size(400, 400);
    background(255);
}

void draw() {
    drawCircle(mouseX, mouseY, 30); // Circle follows the mouse with size 30
}
```

#### Returning Values
Functions can also return values. Use a return type other than `void` to specify the type of data returned by the function.

```java
int addNumbers(int a, int b) {
    return a + b; // Returns the sum of a and b
}

void setup() {
    size(400, 400);
    background(255);
    int result = addNumbers(10, 5);
    println("The sum is " + result); // Prints: The sum is 15
}
```

### Advanced Function Usage
As you become more familiar with functions, you can explore advanced topics such as recursion, where a function calls itself to solve problems.

```java
int factorial(int n) {
    if (n == 1) {
        return 1; // Base case
    } else {
        return n * factorial(n - 1); // Recursive case
    }
}

void setup() {
    println("Factorial of 5 is " + factorial(5)); // Prints: Factorial of 5 is 120
}
```

### Practice Exercises
1. **Create a custom shape function**: Define a function that draws a unique shape you design, which can be positioned anywhere on the canvas.
2. **Animate shapes with functions**: Use functions to animate shapes moving across the screen, changing size, or color.

Utilizing functions will greatly enhance the readability and maintainability of your code, making it easier to expand and adapt your sketches as you explore more complex projects in Processing.
