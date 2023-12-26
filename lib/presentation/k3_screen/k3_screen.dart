import 'models/k3_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_text_form_field.dart';
import 'provider/k3_provider.dart';

class K3Screen extends StatefulWidget {
  const K3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K3ScreenState createState() => K3ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K3Provider(),
      child: K3Screen(),
    );
  }
}

class K3ScreenState extends State<K3Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildName(context),
              SizedBox(height: 23.v),
              _buildRole(context),
              SizedBox(height: 23.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_add_employee_details".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<K3Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_joseph_manadan".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(8.h, 8.v, 12.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgPersonfill0wght300grad0opsz2421,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRole(BuildContext context) {
    return Selector<K3Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.roleController,
      builder: (context, roleController, child) {
        return CustomTextFormField(
          controller: roleController,
          hintText: "lbl_select_role".tr,
          hintStyle: CustomTextStyles.bodyLargeErrorContainer,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(8.h, 8.v, 12.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgWorkfill0wght300grad0opsz241,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdropdownfill1wght400grad0opsz243,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 9.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Selector<K3Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.dateController,
      builder: (context, dateController, child) {
        return CustomTextFormField(
          width: 172.h,
          controller: dateController,
          hintText: "lbl_today".tr,
          hintStyle: CustomTextStyles.bodyMediumOnPrimary,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(8.h, 8.v, 9.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEventfill0wght300grad0opsz2411,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate1(BuildContext context) {
    return Selector<K3Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.dateController1,
      builder: (context, dateController1, child) {
        return CustomTextFormField(
          width: 172.h,
          controller: dateController1,
          hintText: "lbl_no_date".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(8.h, 8.v, 9.h, 8.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEventfill0wght300grad0opsz2411,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDate(context),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightAlt,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 10.v),
        ),
        _buildDate1(context),
      ],
    );
  }
}
