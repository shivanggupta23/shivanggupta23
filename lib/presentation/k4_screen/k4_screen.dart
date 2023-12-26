import '../k4_screen/widgets/userprofile_item_widget.dart';
import 'models/k4_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_floating_button.dart';
import 'provider/k4_provider.dart';

class K4Screen extends StatefulWidget {
  const K4Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K4ScreenState createState() => K4ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K4Provider(),
      child: K4Screen(),
    );
  }
}

class K4ScreenState extends State<K4Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          height: 886.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAppBar(context),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_current_employees".tr,
                          style: CustomTextStyles.titleMediumBlue500,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildFrameColumn(
                      context,
                      userImage: "lbl_samantha_lee".tr,
                      userRole: "msg_full_stack_developer".tr,
                      userMessage: "msg_from_21_sep_2022".tr,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 104.v,
                        width: 228.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.h,
                          vertical: 40.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgDeleteFill0WgPrimary,
                          height: 24.v,
                          width: 25.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                    _buildFrameColumn(
                      context,
                      userImage: "lbl_sarah_johnson".tr,
                      userRole: "msg_senior_software".tr,
                      userMessage: "msg_from_14_jun_2022".tr,
                    ),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_previous_employees".tr,
                          style: CustomTextStyles.titleMediumBlue500,
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    _buildUserProfileColumn(context),
                    SizedBox(height: 48.v),
                  ],
                ),
              ),
              _buildFrameColumn2(context),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_employee_list".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserProfileColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: AppDecoration.fillGray300,
          child: Consumer<K4Provider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: provider.k4ModelObj.userprofileItemList.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model =
                      provider.k4ModelObj.userprofileItemList[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "msg_swipe_left_to_delete".tr,
            style: CustomTextStyles.bodyMedium15,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 216.v),
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_david_kim".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 10.v),
            Text(
              "msg_senior_software".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 9.v),
            Text(
              "msg_from_1_jul_2022".tr,
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
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
        width: 25.0.h,
      ),
    );
  }

  /// Common widget
  Widget _buildFrameColumn(
    BuildContext context, {
    required String userImage,
    required String userRole,
    required String userMessage,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userImage,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            userRole,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            userMessage,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
