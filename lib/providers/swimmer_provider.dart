import 'package:flutter/material.dart';

import 'package:agoranadador/controllers/swimmer_controller.dart';
import 'package:agoranadador/models/swimmer.dart';

class SwimmerProvider extends ChangeNotifier {
  final SwimmerController _controller = SwimmerController();

  Stream<List<Swimmer>> get swimmersStream =>
      _controller.swimmersStream;

  Future<void> addSwimmer({
    required String nome,
    required String email,
    required DateTime dataNascimento,
  }) async {
    final swimmer = Swimmer(
      id: '',
      nome: nome,
      email: email,
      dataNascimento: dataNascimento,
    );

    await _controller.addSwimmer(swimmer);

    notifyListeners();
  }

  Future<void> registerProgress(
    String swimmerId,
    double distance,
    int time,
  ) async {
    await _controller.registerProgress(
      swimmerId,
      distance,
      time,
    );

    notifyListeners();
  }
}