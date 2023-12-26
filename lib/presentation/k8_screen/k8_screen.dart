import '../k8_screen/widgets/userprofilelist_item_widget.dart';
import 'models/k8_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_floating_button.dart';
import 'provider/k8_provider.dart';

class K8Screen extends StatefulWidget {
  const K8Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K8ScreenState createState() => K8ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K8Provider(),
      child: K8Screen(),
    );
  }
}

class K8ScreenState extends State<K8Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 19.v),
              _buildUserProfileList(context),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_swipe_left_to_delete".tr,
                    style: CustomTextStyles.bodyMedium15,
                  ),
                ),
              ),
              SizedBox(height: 44.v),
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
  Widget _buildUserProfileList(BuildContext context) {
    return Consumer<K8Provider>(
      builder: (context, provider, child) {
        return GroupedListView<UserprofilelistItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: provider.k8ModelObj.userprofilelistItemList ?? [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 19.v,
                bottom: 17.v,
              ),
              child: Text(
                value,
                style: CustomTextStyles.titleMediumBlue500.copyWith(
                  color: appTheme.blue500,
                ),
              ),
            );
          },
          itemBuilder: (context, model) {
            return UserprofilelistItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 1.v,
          ),
        );
      },
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
}
