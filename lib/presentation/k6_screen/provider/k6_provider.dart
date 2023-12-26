import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k6_screen/models/k6_model.dart';

/// A provider class for the K6Screen.
///
/// This provider manages the state of the K6Screen, including the
/// current k6ModelObj
class K6Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController positionController = TextEditingController();

  TextEditingController eventController = TextEditingController();

  K6Model k6ModelObj = K6Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    positionController.dispose();
    eventController.dispose();
  }
}
