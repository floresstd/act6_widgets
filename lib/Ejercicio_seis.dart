import 'package:flutter/material.dart';

//! AnimatedList con estructura de Scaffold

class EjercicioSeis extends StatefulWidget {
  const EjercicioSeis({Key? key}) : super(key: key);

  @override
  State<EjercicioSeis> createState() => _EjercicioSeisState();
}

class _EjercicioSeisState extends State<EjercicioSeis> {
  final List<String> _items = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _listKey.currentState!.insertItem(
      0,
      duration: const Duration(milliseconds: 500),
    );
  }

  void _removeItem(int index) {
    _listKey.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.redAccent,
            child: ListTile(
              title: Text(
                "Eliminado",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Seis',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffde2899),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextButton.icon(
            onPressed: _addItem,
            icon: const Icon(Icons.add, color: Colors.white),
            label: const Text(
              "Agregar ítem",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff272727),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _items.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 22),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.black),
                        onPressed: () => _removeItem(index),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
