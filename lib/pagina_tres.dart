import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Tres',
          style: const TextStyle(
            color: Color(0xff272727), // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Color(0xffde2899),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Pantalla inicial"),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
              },
              child: Container(
                height: 200,
                width: 200,
                color: Color(0xffbf5175),
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
