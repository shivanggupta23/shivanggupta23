import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/presentation/k8_screen/models/k8_model.dart';
import '../models/userprofilelist_item_model.dart';

/// A provider class for the K8Screen.
///
/// This provider manages the state of the K8Screen, including the
/// current k8ModelObj

// ignore_for_file: must_be_immutable
class K8Provider extends ChangeNotifier {
  K8Model k8ModelObj = K8Model();

  @override
  void dispose() {
    super.dispose();
  }
}
