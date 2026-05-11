import 'package:flutter/material.dart';
import 'package:agoranadador/controllers/swimmer_controller.dart';
import 'package:agoranadador/models/swimmer.dart';

class AddSwimmerPage extends StatefulWidget {
  const AddSwimmerPage({super.key});

  @override
  State<AddSwimmerPage> createState() => _AddSwimmerPageState();
}

class _AddSwimmerPageState extends State<AddSwimmerPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController =
      TextEditingController();

  final TextEditingController _emailController =
      TextEditingController();

  DateTime? _dataNascimento;

  Future<void> _salvar() async {
    if (!_formKey.currentState!.validate() ||
        _dataNascimento == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha todos os campos.'),
        ),
      );
      return;
    }

    final controller = SwimmerController();

    await controller.addSwimmer(
      Swimmer(
        id: '',
        nome: _nomeController.text.trim(),
        email: _emailController.text.trim(),
        dataNascimento: _dataNascimento!,
      ),
    );

    if (mounted) {
      Navigator.pop(context);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nadador cadastrado!'),
        ),
      );
    }
  }

  Future<void> _selecionarData() async {
    final hoje = DateTime.now();

    final data = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: hoje,
    );

    if (data != null) {
      setState(() {
        _dataNascimento = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Nadador'),
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome Completo',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      _dataNascimento == null
                          ? 'Nenhuma data selecionada'
                          : 'Nascimento: '
                              '${_dataNascimento!.day}/'
                              '${_dataNascimento!.month}/'
                              '${_dataNascimento!.year}',
                    ),
                  ),

                  ElevatedButton(
                    onPressed: _selecionarData,
                    child: const Text(
                      'Selecionar',
                    ),
                  ),
                ],
              ),

              const Spacer(),

              ElevatedButton.icon(
                onPressed: _salvar,
                icon: const Icon(Icons.save),
                label: const Text('Salvar'),
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 56),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}