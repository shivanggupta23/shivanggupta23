import 'package:flutter/material.dart';
import 'package:shivang_s_crud/presentation/k0_screen/k0_screen.dart';
import 'package:shivang_s_crud/presentation/k1_screen/k1_screen.dart';
import 'package:shivang_s_crud/presentation/k2_screen/k2_screen.dart';
import 'package:shivang_s_crud/presentation/k3_screen/k3_screen.dart';
import 'package:shivang_s_crud/presentation/k4_screen/k4_screen.dart';
import 'package:shivang_s_crud/presentation/k5_screen/k5_screen.dart';
import 'package:shivang_s_crud/presentation/k6_screen/k6_screen.dart';
import 'package:shivang_s_crud/presentation/k7_screen/k7_screen.dart';
import 'package:shivang_s_crud/presentation/k8_screen/k8_screen.dart';
import 'package:shivang_s_crud/presentation/k9_screen/k9_screen.dart';
import 'package:shivang_s_crud/presentation/k10_screen/k10_screen.dart';
import 'package:shivang_s_crud/presentation/k11_screen/k11_screen.dart';
import 'package:shivang_s_crud/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String k0Screen = '/k0_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Screen = '/k2_screen';

  static const String k3Screen = '/k3_screen';

  static const String k4Screen = '/k4_screen';

  static const String k5Screen = '/k5_screen';

  static const String k6Screen = '/k6_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Screen = '/k8_screen';

  static const String k9Screen = '/k9_screen';

  static const String k10Screen = '/k10_screen';

  static const String k11Screen = '/k11_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        k0Screen: K0Screen.builder,
        k1Screen: K1Screen.builder,
        k2Screen: K2Screen.builder,
        k3Screen: K3Screen.builder,
        k4Screen: K4Screen.builder,
        k5Screen: K5Screen.builder,
        k6Screen: K6Screen.builder,
        k7Screen: K7Screen.builder,
        k8Screen: K8Screen.builder,
        k9Screen: K9Screen.builder,
        k10Screen: K10Screen.builder,
        k11Screen: K11Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: K7Screen.builder
      };
}
