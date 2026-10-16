import 'package:flutter/material.dart';

class MiCarta extends StatelessWidget {
  const MiCarta({super.key});

  Widget build(BuildContext context) {
return Row(

  mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwkntX-anUPCvHq-kytE0cZOrtGA5-5m8tQwddmBPezC_SkdaQ1SUKmmA5&s=10', width: 100,),
        Column(
       children: [
      Text('Homero familia', style: const TextStyle(fontSize: 22, color:  Colors.purple, fontWeight: FontWeight.bold)),
       Text('5 integrantes', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
       Row(
       children: [
       ElevatedButton(onPressed: (){}, child: Text('Añadir familia')),
        ElevatedButton(onPressed: (){}, child: Text('Eliminar')),
        ],
           )
         ],
         )
      ],
    );
  }
}