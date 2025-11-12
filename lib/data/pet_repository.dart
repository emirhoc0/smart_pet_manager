import '../models/dog.dart';
import '../models/cat.dart';
import '../models/bird.dart';
import '../models/pet.dart';

class PetRepository {
  final List<Pet> pets = [
    Dog('Rex', 3, breed: 'German Shepherd', initialMood: 70),
    Cat('Misty', 2, isIndoor: true, initialMood: 60),
    Bird.parrot(name: 'Pico', age: 1, color: 'Yellow/Blue', initialMood: 75),
  ];
}
