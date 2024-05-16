### Arrays and ArrayLists

Arrays and ArrayLists are essential data structures in Processing for storing and managing multiple values under a single variable name. This section provides a concise guide on how to utilize these structures in your Processing sketches.

#### Arrays
An array in Processing stores a fixed number of values of the same type. Arrays are useful when you know the number of elements in advance and that number does not change.

```java
int[] numbers = {10, 20, 30, 40, 50}; // Initialize an array with 5 elements

void setup() {
    size(400, 400);
    background(255);
    for (int i = 0; i < numbers.length; i++) {
        println("Number at index " + i + " is " + numbers[i]);
    }
}
```

#### Manipulating Arrays
You can access and modify elements in an array by their indices, which start at 0.

```java
void setup() {
    size(400, 400);
    background(255);
    int[] numbers = {10, 20, 30, 40, 50};
    numbers[2] = 35; // Modify the third element
    for (int i = 0; i < numbers.length; i++) {
        println("Number at index " + i + " is " + numbers[i]);
    }
}
```

#### ArrayLists
ArrayLists in Processing are dynamic arrays that can grow and shrink in size as needed. This is useful when you do not know how many items you will need to store.

```java
ArrayList<Integer> numbers = new ArrayList<Integer>(); // Create an ArrayList

void setup() {
    size(400, 400);
    background(255);
    numbers.add(10);
    numbers.add(20);
    numbers.add(30);
    numbers.remove(1); // Remove the element at index 1 (20)
    
    for (int i = 0; i < numbers.size(); i++) {
        println("Number at index " + i + " is " + numbers.get(i));
    }
}
```

#### ArrayList Methods
ArrayLists provide a variety of methods to manipulate data dynamically.
- `add(value)`: Adds an element to the end of the list.
- `get(index)`: Returns the element at the specified index.
- `set(index, value)`: Sets the element at the specified index to a new value.
- `size()`: Returns the number of elements in the list.
- `remove(index)`: Removes the element at the specified index.

```java
void draw() {
    background(255);
    for (int i = 0; i < numbers.size(); i++) {
        int x = i * 10 + 20; // Calculate x position
        int y = numbers.get(i); // Get the current number
        ellipse(x, y, 10, 10);
    }
}
```

### Practice Exercises
1. **Store and display points**: Create an array or ArrayList to store points represented by mouse clicks, and display these points as circles on the canvas.
2. **Data manipulation**: Use ArrayLists to dynamically add and remove elements based on user input, such as keyboard or mouse actions.

Understanding and utilizing arrays and ArrayLists will significantly enhance your ability to handle complex data in your Processing projects, enabling more interactive and dynamic sketches.
