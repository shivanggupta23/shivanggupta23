import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k0_screen/models/k0_model.dart';

/// A provider class for the K0Screen.
///
/// This provider manages the state of the K0Screen, including the
/// current k0ModelObj
class K0Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController positionController = TextEditingController();

  TextEditingController eventController = TextEditingController();

  K0Model k0ModelObj = K0Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    positionController.dispose();
    eventController.dispose();
  }
}
