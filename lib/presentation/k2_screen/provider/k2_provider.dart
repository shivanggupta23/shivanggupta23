import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k2_screen/models/k2_model.dart';

/// A provider class for the K2Screen.
///
/// This provider manages the state of the K2Screen, including the
/// current k2ModelObj
class K2Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController positionController = TextEditingController();

  TextEditingController eventController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  K2Model k2ModelObj = K2Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    positionController.dispose();
    eventController.dispose();
    dateController.dispose();
  }
}
