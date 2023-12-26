import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k4_screen/models/k4_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the K4Screen.
///
/// This provider manages the state of the K4Screen, including the
/// current k4ModelObj

// ignore_for_file: must_be_immutable
class K4Provider extends ChangeNotifier {
  K4Model k4ModelObj = K4Model();

  @override
  void dispose() {
    super.dispose();
  }
}
