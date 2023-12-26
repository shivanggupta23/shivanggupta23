import 'models/k10_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_drop_down.dart';
import 'package:shivang_s_crud/widgets/custom_elevated_button.dart';
import 'package:shivang_s_crud/widgets/custom_text_form_field.dart';
import 'provider/k10_provider.dart';

class K10Screen extends StatefulWidget {
  const K10Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K10ScreenState createState() => K10ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K10Provider(),
      child: K10Screen(),
    );
  }
}

class K10ScreenState extends State<K10Screen> {
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
              Selector<K10Provider, K10Model?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.k10ModelObj,
                builder: (context, k10ModelObj, child) {
                  return CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 10.v),
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .imgArrowdropdownfill1wght400grad0opsz243,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    hintText: "msg_flutter_developer".tr,
                    items: k10ModelObj?.dropdownItemList ?? [],
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(8.h, 8.v, 12.h, 8.v),
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgWorkfill0wght300grad0opsz241,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 40.v,
                    ),
                    onChanged: (value) {
                      context.read<K10Provider>().onSelected(value);
                    },
                  );
                },
              ),
              SizedBox(height: 23.v),
              _buildFrame1(context),
              SizedBox(height: 5.v),
            ],
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
    return Selector<K10Provider, TextEditingController?>(
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
  Widget _buildFrame(BuildContext context) {
    return Selector<K10Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.frameController,
      builder: (context, frameController, child) {
        return CustomTextFormField(
          width: 172.h,
          controller: frameController,
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
    return Selector<K10Provider, TextEditingController?>(
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
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFrame(context),
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
  Widget _buildCancel(BuildContext context) {
    return CustomElevatedButton(
      width: 73.h,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
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
          _buildCancel(context),
          _buildSave(context),
        ],
      ),
    );
  }
}
