import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k10_screen/models/k10_model.dart';

/// A provider class for the K10Screen.
///
/// This provider manages the state of the K10Screen, including the
/// current k10ModelObj
class K10Provider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController frameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  K10Model k10ModelObj = K10Model();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    frameController.dispose();
    dateController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in k10ModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
