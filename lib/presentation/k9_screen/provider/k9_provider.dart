import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k9_screen/models/k9_model.dart';
import '../models/employeelistsection_item_model.dart';

/// A provider class for the K9Screen.
///
/// This provider manages the state of the K9Screen, including the
/// current k9ModelObj

// ignore_for_file: must_be_immutable
class K9Provider extends ChangeNotifier {
  K9Model k9ModelObj = K9Model();

  @override
  void dispose() {
    super.dispose();
  }
}
