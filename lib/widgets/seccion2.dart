import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  Widget build(BuildContext context) {
return Column(
  mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Nombre del participante',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person_add),
          ),
          onSubmitted: (_) => (), 
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 13, 163, 173),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: (){},
            icon: const Icon(Icons.add),
            label: const Text('Agregar participante', style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}