import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _controller = TextEditingController();
  String texto = '';
  var cursos = [
    'Desenvolvimento de Sistemas',
    'Informática para Internet',
    'Administração',
    'Logística'
  ];

  var tipos = ['Comentário', 'Elogio', 'Crítica', 'Sugestão'];

  String curso = '';

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
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Dê sua sugestão pra gente!',
                label: Text('Sugestão'),
              ),
              controller: _controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Seu nome, mas você pode omitir...',
                label: Text('Nome'),
              ),
              controller: _controller,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: DropdownButton(
              isExpanded: true,
              hint: const Text('Selecione o Curso'),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: cursos
                  .map((e) => DropdownMenuItem(
                        alignment: Alignment.centerLeft,
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  curso = value as String;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: DropdownButton(
              isExpanded: true,
              hint: const Text('Selecione o tipo'),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: tipos
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  curso = value as String;
                });
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = _controller.text;
                });
              },
              child: const Text('SALVAR'),
            ),
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
