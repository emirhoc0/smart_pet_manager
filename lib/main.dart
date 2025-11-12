import 'package:flutter/material.dart';
import 'data/pet_repository.dart';
import 'models/pet.dart';
import 'widgets/pet_card.dart';

void main() {
  runApp(const SmartPetApp());
}

class SmartPetApp extends StatelessWidget {
  const SmartPetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Pet Manager',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: const PetHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PetHomePage extends StatefulWidget {
  const PetHomePage({super.key});

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  final repo = PetRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Pet Manager')),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: repo.pets.length,
        itemBuilder: (context, i) => PetCard(pet: repo.pets[i]),
        separatorBuilder: (context, _) => const SizedBox(height: 8),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Total pets: ${Pet.totalCount}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
