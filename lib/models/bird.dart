import '../mixins/flyable.dart';
import 'pet.dart';

class Bird extends Pet with Flyable {
  final String color;

  Bird(String name, int age, {this.color = 'Green', int initialMood = 65})
      : super(name, age, 'Bird', initialMood: initialMood);

  Bird.parrot({required String name, required int age, String color = 'Multicolor', int initialMood = 70})
      : color = color,
        super.named(name: name, age: age, species: 'Bird', initialMood: initialMood);

  @override
  String makeSound() => 'Tweet! Tweet!';

  @override
  String interact() => 'chirps happily and hops closer';

  String move() => 'hops a few steps and ' + fly();
}
