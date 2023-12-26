import 'models/k7_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/custom_floating_button.dart';
import 'provider/k7_provider.dart';

class K7Screen extends StatefulWidget {
  const K7Screen({Key? key}) : super(key: key);

  @override
  K7ScreenState createState() => K7ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => K7Provider(), child: K7Screen());
  }
}

class K7ScreenState extends State<K7Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.k1Screen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildEmployeeListFrame(context),
                  Spacer(flex: 41),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup5363,
                      height: 218.v,
                      width: 261.h),
                  SizedBox(height: 5.v),
                  Text("msg_no_employee_records".tr,
                      style: CustomTextStyles.titleMedium18),
                  Spacer(flex: 58)
                ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  Widget _buildEmployeeListFrame(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: AppDecoration.fillBlue,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("lbl_employee_list".tr,
                  style: CustomTextStyles.titleMediumPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.blue500,
        child: CustomImageView(
            imagePath: ImageConstant.imgPlusicon,
            height: 25.0.v,
            width: 25.0.h));
  }
}
