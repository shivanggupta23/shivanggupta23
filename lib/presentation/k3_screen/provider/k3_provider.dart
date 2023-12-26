import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k3_screen/models/k3_model.dart';

/// A provider class for the K3Screen.
///
/// This provider manages the state of the K3Screen, including the
/// current k3ModelObj
class K3Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController roleController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController dateController1 = TextEditingController();

  K3Model k3ModelObj = K3Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    roleController.dispose();
    dateController.dispose();
    dateController1.dispose();
  }
}
