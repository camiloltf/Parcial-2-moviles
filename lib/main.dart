import 'package:flutter/material.dart';
import 'package:parcial2_moviles/widgets/card1.dart';
import 'package:parcial2_moviles/widgets/card2.dart';
import './widgets/seccion2.dart';
import './widgets/random.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: .bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        SizedBox(height: 30),
        MiCarta(),
        SizedBox(height: 45),
        MiCarta2()
      ],
    ),
    Input(),
    Moneda()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 204, 36),
      appBar: AppBar(title: const Text('BottomNavigationBar Sample'), backgroundColor: const Color.fromARGB(255, 65, 177, 252)),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:   const Color.fromARGB(255, 65, 177, 252),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: 'Personalizados'),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_decrease),
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad_sharp), label: 'Random'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 204, 36),
        onTap: _onItemTapped,
      ),
    );
  }
}
