import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k1_screen/models/k1_model.dart';

/// A provider class for the K1Screen.
///
/// This provider manages the state of the K1Screen, including the
/// current k1ModelObj
class K1Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController selectRoleController = TextEditingController();

  TextEditingController todayController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  K1Model k1ModelObj = K1Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    selectRoleController.dispose();
    todayController.dispose();
    dateController.dispose();
  }
}
