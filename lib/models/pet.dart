import 'package:flutter/foundation.dart';

/// Interface: any pet that can be friendly to humans
abstract class Friendly {
  String interact(); // e.g., "wags tail", "purrs"
}

/// Abstract base class (Abstraction): must implement makeSound()
abstract class Pet implements Friendly {
  static int totalCount = 0; // Keyword: static (shared across all pets)

  final String name;
  final int age;
  final String species;
  final ValueNotifier<int> mood; // trivial reactive state (0-100)

  /// Default constructor
  Pet(this.name, this.age, this.species, {int initialMood = 50})
      : mood = ValueNotifier<int>(initialMood) {
    totalCount++; // increase global count as instances are created
  }

  /// Named constructor for convenience
  Pet.named({required this.name, required this.age, required this.species, int initialMood = 50})
      : mood = ValueNotifier<int>(initialMood) {
    totalCount++;
  }

  /// Abstract method to be implemented by subclasses
  String makeSound();

  /// Common behavior: basic info line
  String info() => '$species named $name, age $age, mood ${mood.value}/100';

  /// Demonstrate 'this'
  void boostMood(int amount) {
    mood.value = (this.mood.value + amount).clamp(0, 100);
  }
}
