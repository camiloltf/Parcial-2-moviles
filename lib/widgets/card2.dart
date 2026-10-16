import 'package:flutter/material.dart';

class MiCarta2 extends StatelessWidget {
  const MiCarta2({super.key});

  Widget build(BuildContext context) {
return Column(
              children: [
                Image.network('https://disney.images.edge.bamgrid.com/ripcut-delivery/v2/variant/disney/b589a828-a253-4912-a25f-624206ac535f/compose?aspectRatio=1.78&format=webp&width=1200'),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Simpsons2', style: const TextStyle(fontSize: 22, color:  Colors.purple, fontWeight: FontWeight.bold)),
                        Text('parte2', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        Text('esto es un parrafo generico', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    ElevatedButton(onPressed: (){}, child: Icon(Icons.account_circle_outlined))
                  ],
                )
              ],
            );
  }
}