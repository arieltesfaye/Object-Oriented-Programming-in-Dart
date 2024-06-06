// Define an interface
abstract class Features {
  void displayFeatures();
}

// Base class
class SamsungPhone implements Features {
  String model;
  String color;

  SamsungPhone(this.model, this.color);

  // Method to display phone features, implemented from Features interface
  @override
  void displayFeatures() {
    print('$model comes in $color color.');
  }

  // Method to display phone details
  void displayDetails() {
    print('Model: $model');
    print('Color: $color');
  }
}

// Derived class
class Galaxy extends SamsungPhone {
  int batteryLife;

  Galaxy(String model, String color, this.batteryLife) : super(model, color);

  // Overriding the displayFeatures method
  @override
  void displayFeatures() {
    print('$model has a battery life of $batteryLife hours.');
  }

  // Method demonstrating the use of a loop
  void displayGalaxyDetails() {
    displayDetails();
    print('Battery Life: $batteryLife hours');

    // Loop to display some characteristic multiple times
    for (int i = 0; i < 3; i++) {
      print('$model is a great phone.');
    }
  }
}

void main() {
  // Directly initializing Galaxy object with data
  String model = 'Galaxy S21';
  String color = 'Phantom Black';
  int batteryLife = 18;

  Galaxy myGalaxy = Galaxy(model, color, batteryLife);

  // Display Galaxy details
  myGalaxy.displayGalaxyDetails();

  // Demonstrate overridden method
  myGalaxy.displayFeatures();
}
