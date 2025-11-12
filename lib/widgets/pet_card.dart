import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/dog.dart';
import '../models/cat.dart';
import '../models/bird.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  const PetCard({super.key, required this.pet});

  IconData _iconFor(Pet p) {
    if (p is Dog) return Icons.pets;
    if (p is Cat) return Icons.pets_outlined;
    if (p is Bird) return Icons.filter_hdr;
    return Icons.help_outline;
    }

  List<Widget> _extraChips(Pet p) {
    if (p is Dog) {
      return [Chip(label: Text('Breed: ${p.breed}'))];
    } else if (p is Cat) {
      return [Chip(label: Text(p.isIndoor ? 'Indoor' : 'Outdoor'))];
    } else if (p is Bird) {
      return [Chip(label: Text('Can Fly')), Chip(label: Text('Colorful'))];
    }
    return const [];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(_iconFor(pet), size: 42),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${pet.species} • ${pet.name}', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 6),
                  Text('Age: ${pet.age}'),
                  const SizedBox(height: 6),
                  Text('Sound: ${pet.makeSound()}'),
                  const SizedBox(height: 6),
                  Text('Interaction: ${pet.interact()}'),
                  const SizedBox(height: 8),
                  Wrap(spacing: 6, runSpacing: -6, children: _extraChips(pet)),
                  const SizedBox(height: 8),
                  ValueListenableBuilder<int>(
                    valueListenable: pet.mood,
                    builder: (context, mood, _) => Row(
                      children: [
                        const Text('Mood: '),
                        Expanded(
                          child: LinearProgressIndicator(value: mood / 100),
                        ),
                        const SizedBox(width: 8),
                        Text('$mood/100'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => pet.boostMood(10),
                        child: const Text('+ Cheer'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: () => pet.mood.value = (pet.mood.value - 10).clamp(0, 100),
                        child: const Text('- Mood'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
