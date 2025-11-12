import 'pet.dart';

class Cat extends Pet {
  final bool isIndoor;

  Cat(String name, int age, {this.isIndoor = true, int initialMood = 55})
      : super(name, age, 'Cat', initialMood: initialMood);

  Cat.stray({required String name, required int age, int initialMood = 45})
      : isIndoor = false,
        super.named(name: name, age: age, species: 'Cat', initialMood: initialMood);

  @override
  String makeSound() => 'Meow~';

  @override
  String interact() => 'purrs and rubs against your leg';

  String move() => 'stretches lazily then walks with elegance';
}
