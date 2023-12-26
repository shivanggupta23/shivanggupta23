import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k7_screen/models/k7_model.dart';

/// A provider class for the K7Screen.
///
/// This provider manages the state of the K7Screen, including the
/// current k7ModelObj

// ignore_for_file: must_be_immutable
class K7Provider extends ChangeNotifier {
  K7Model k7ModelObj = K7Model();

  @override
  void dispose() {
    super.dispose();
  }
}
