import 'models/k1_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/core/utils/validation_functions.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_elevated_button.dart';
import 'package:shivang_s_crud/widgets/custom_text_form_field.dart';
import 'provider/k1_provider.dart';

class K1Screen extends StatefulWidget {
  const K1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K1ScreenState createState() => K1ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K1Provider(),
      child: K1Screen(),
    );
  }
}

class K1ScreenState extends State<K1Screen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 24.v,
            ),
            child: Column(
              children: [
                _buildName(context),
                SizedBox(height: 23.v),
                _buildSelectRole(context),
                SizedBox(height: 23.v),
                _buildFrame(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
    return Selector<K1Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_employee_name".tr,
          hintStyle: CustomTextStyles.bodyLargeErrorContainer,
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
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSelectRole(BuildContext context) {
    return Selector<K1Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.selectRoleController,
      builder: (context, selectRoleController, child) {
        return CustomTextFormField(
          controller: selectRoleController,
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
          contentPadding: EdgeInsets.symmetric(vertical: 10.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildToday(BuildContext context) {
    return Selector<K1Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.todayController,
      builder: (context, todayController, child) {
        return CustomTextFormField(
          width: 172.h,
          controller: todayController,
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
  Widget _buildDate(BuildContext context) {
    return Selector<K1Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.dateController,
      builder: (context, dateController, child) {
        return CustomTextFormField(
          width: 172.h,
          controller: dateController,
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
        _buildToday(context),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightAlt,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 10.v),
        ),
        _buildDate(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return CustomElevatedButton(
      width: 73.h,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      width: 73.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 16.h),
      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 250.h,
        right: 16.h,
        bottom: 12.v,
      ),
      decoration: AppDecoration.outlineGray100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCancelButton(context),
          _buildSaveButton(context),
        ],
      ),
    );
  }
}
