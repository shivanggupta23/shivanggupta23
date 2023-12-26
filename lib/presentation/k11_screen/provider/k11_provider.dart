import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k11_screen/models/k11_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A provider class for the K11Screen.
///
/// This provider manages the state of the K11Screen, including the
/// current k11ModelObj
class K11Provider extends ChangeNotifier {
  TextEditingController employeeNameController = TextEditingController();

  K11Model k11ModelObj = K11Model();

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  void dispose() {
    super.dispose();
    employeeNameController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in k11ModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
