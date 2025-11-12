Team Members

 Emirali Emirhoca  99927819666
 Arda Atakan Tosun 16162103640
 Muhammet Emin Karaduman 12991277828




Smart Pet Manager

This project is a simple Flutter mobile application developed for the BİM493 Mobile Programming I course assignment.
It is called Smart Pet Manager and allows the user to view different types of pets and their basic behaviors such as sound, movement and short information.

The goal of this homework is to apply Object Oriented Programming (OOP) principles using Dart and Flutter.
We created a small interactive app that demonstrates abstraction, inheritance, constructors, interfaces, mixins, and the use of static, super, and this keywords.

Project Description

The app contains three main pet types: Dog, Cat, and Bird.
Each of them is modeled as a separate class that extends the base Pet class.
The Pet class is abstract and defines the general structure and common behaviors of all pets, including an abstract method makeSound() that each subclass overrides.
An interface (for example, Friendly) is implemented by the pets, and a mixin (Flyable) is used in the Bird class to show multiple inheritance in Dart.

The user interface lists the pets in cards.
Each card shows the pet’s name, its sound, and a short description.
At the bottom of the screen, the total number of pets is displayed using a static variable from the Pet class.

Concepts Used

Abstract class (Pet)

Subclasses (Dog, Cat, Bird)

Default and named constructors

Inheritance and method overriding

Interface implementation

Mixin usage

Use of static, super, and this keywords

Simple UI layout using Flutter widgets

How to Run

Open a terminal and go to the project folder

cd smart_pet_manager


Get the required Flutter packages

flutter pub get


Run the application

flutter run



Expected Output

The main screen shows three pet cards:

Dog

Cat

Bird

Each card displays information about the pet and its behavior.
At the bottom of the screen, a text shows the total number of pets in the app.


