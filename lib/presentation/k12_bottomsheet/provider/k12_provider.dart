import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k12_bottomsheet/models/k12_model.dart';

/// A provider class for the K12Bottomsheet.
///
/// This provider manages the state of the K12Bottomsheet, including the
/// current k12ModelObj
class K12Provider extends ChangeNotifier {
  K12Model k12ModelObj = K12Model();

  @override
  void dispose() {
    super.dispose();
  }
}
