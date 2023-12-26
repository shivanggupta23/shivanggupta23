import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k5_screen/models/k5_model.dart';
import '../models/seventeen_item_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A provider class for the K5Screen.
///
/// This provider manages the state of the K5Screen, including the
/// current k5ModelObj

// ignore_for_file: must_be_immutable
class K5Provider extends ChangeNotifier {
  TextEditingController personFILLwghtGRADopszController =
      TextEditingController();

  K5Model k5ModelObj = K5Model();

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  void dispose() {
    super.dispose();
    personFILLwghtGRADopszController.dispose();
  }
}
