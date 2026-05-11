import 'package:cloud_firestore/cloud_firestore.dart';

class Progresso {
  final DateTime data;
  final double distancia;
  final int tempoEmSegundos;

  Progresso({
    required this.data,
    required this.distancia,
    required this.tempoEmSegundos,
  });

  factory Progresso.fromMap(Map<String, dynamic> map) {
    return Progresso(
      data: (map['data'] as Timestamp?)?.toDate() ?? DateTime.now(),
      distancia: (map['distancia'] as num?)?.toDouble() ?? 0.0,
      tempoEmSegundos: map['tempoEmSegundos'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': Timestamp.fromDate(data),
      'distancia': distancia,
      'tempoEmSegundos': tempoEmSegundos,
    };
  }
}

class Swimmer {
  final String id;
  final String nome;
  final String email;
  final DateTime dataNascimento;
  final List<Progresso> progressos;

  Swimmer({
    required this.id,
    required this.nome,
    required this.email,
    required this.dataNascimento,
    this.progressos = const [],
  });

  factory Swimmer.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data()!;
    return Swimmer.fromMap(data, doc.id);
  }

  factory Swimmer.fromMap(Map<String, dynamic> map, String id) {
    return Swimmer(
      id: id,
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      dataNascimento: (map['dataNascimento'] as Timestamp?)?.toDate() ?? DateTime.now(),
      progressos: (map['progressos'] as List<dynamic>?)
              ?.map((e) => Progresso.fromMap(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'dataNascimento': Timestamp.fromDate(dataNascimento),
      'progressos': progressos.map((e) => e.toMap()).toList(),
    };
  }
}