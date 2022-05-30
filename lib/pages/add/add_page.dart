import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _controller = TextEditingController();
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Sugestão')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Digite o seu nome',
                label: Text('Nome'),
              ),
              controller: _controller,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                texto = _controller.text;
              });
            },
            child: const Text('SALVAR'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(texto),
          ),
        ]),
      ),
    );
  }
}
