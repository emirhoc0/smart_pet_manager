import 'pet.dart';

class Dog extends Pet {
  final String breed;

  /// Default constructor uses 'super' to initialize base fields
  Dog(String name, int age, {this.breed = 'Mixed', int initialMood = 60})
      : super(name, age, 'Dog', initialMood: initialMood);

  /// Named constructor example
  Dog.ofBreed({required String name, required int age, required this.breed, int initialMood = 60})
      : super.named(name: name, age: age, species: 'Dog', initialMood: initialMood);

  @override
  String makeSound() => 'Woof!';

  @override
  String interact() => 'wags tail and brings a toy';

  String move() => 'runs around the yard';
}
