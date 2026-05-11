import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:agoranadador/providers/swimmer_provider.dart';
import 'package:agoranadador/models/swimmer.dart';
import 'package:agoranadador/screens/add_swimmer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agora Nadador'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer<SwimmerProvider>(
        builder: (context, swimmerProvider, child) {
          return StreamBuilder<List<Swimmer>>(
            stream: swimmerProvider.swimmersStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text('Erro: ${snapshot.error}'),
                );
              }

              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.pool,
                        size: 64,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Nenhum nadador cadastrado',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              }

              final swimmers = snapshot.data!;

              return ListView.builder(
                itemCount: swimmers.length,
                itemBuilder: (context, index) {
                  final swimmer = swimmers[index];

                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          swimmer.nome.isNotEmpty
                              ? swimmer.nome[0].toUpperCase()
                              : '?',
                        ),
                      ),
                      title: Text(swimmer.nome),
                      subtitle: Text(swimmer.email),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddSwimmerPage(),
            ),
          );
        },
        tooltip: 'Adicionar Nadador',
        child: const Icon(Icons.add),
      ),
    );
  }
}