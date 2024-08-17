// Task 1: Create a Basic Class
class Book {
  String? title;
  String? author;
  int? nOfPages;

  Book(this.title, this.author, this.nOfPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $nOfPages');
  }
}

// Task 2: Implement Inheritance
class Novel extends Book {
  String? genre;

  Novel(String title, String author, int nOfPages, this.genre)
      : super(title, author, nOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

// Task 3: Demonstrate Polymorphism
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

// Function to demonstrate polymorphism
void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}

void main() {
  // Test Task 1 & 2
  Book book = Book('p', 'jk', 3000);
  book.displayInfo();

  print('\n');

  Novel novel = Novel('Harry Potter', 'JK rowling', 250, 'fantasy');
  novel.displayInfo();

  print('\n');

  // Test Task 3
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 7);

  printArea(circle);
  printArea(rectangle);
}
