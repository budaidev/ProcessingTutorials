### Introduction to Object-Oriented Programming (OOP)

Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" – data structures consisting of data fields and methods together with their interactions – to design applications and computer programs. Processing makes it easy to apply OOP principles in a visual context, enhancing code organization, reusability, and complexity management.

#### Basic Concepts of OOP

##### Classes and Objects
A class in Processing is a blueprint for creating objects (a particular data structure), defining it in terms of its attributes and behaviors.

```java
class Ball {
    float x, y; // Attributes
    float diameter;
    float speedX, speedY; // Speed components
    
    // Constructor
    Ball(float x, float y, float dia, float speedX, float speedY) {
        this.x = x;
        this.y = y;
        diameter = dia;
        this.speedX = speedX;
        this.speedY = speedY;
    }
    
    // Method to move the ball
    void move() {
        x += speedX;
        y += speedY;
    }
    
    // Method to display the ball
    void display() {
        ellipse(x, y, diameter, diameter);
    }
}
```

##### Creating Objects
You create an object by instantiating a class. Each object has its own set of data and behavior.

```java
Ball myBall;

void setup() {
    size(400, 400);
    // Create a new Ball object
    myBall = new Ball(50, 50, 20, 2, 3);
}

void draw() {
    background(255);
    myBall.move();
    myBall.display();
}
```

#### Methods
Methods are functions defined inside a class and are used to expose behaviors of objects. Methods can access and modify the data of the objects.

#### Inheritance
Inheritance allows a class to inherit characteristics (methods and properties) from another class.

```java
class ColorBall extends Ball {
    color col; // Additional attribute
    
    ColorBall(float x, float y, float dia, float speedX, float speedY, color col) {
        super(x, y, dia, speedX, speedY);
        this.col = col;
    }
    
    // Override the display method
    void display() {
        fill(col);
        super.display();
    }
}
```

### Practice Exercises
1. **Create a class hierarchy**: Design a base class and create several subclasses with specific attributes and behaviors.
2. **Interactive OOP project**: Utilize mouse and keyboard events to interact with objects created from your classes, modifying attributes based on user input.

Understanding and applying these OOP principles in Processing will help you build more structured and sophisticated programs, making your code more modular and easier to maintain.
