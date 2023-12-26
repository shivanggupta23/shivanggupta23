import '../k9_screen/widgets/employeelistsection_item_widget.dart';
import 'models/employeelistsection_item_model.dart';
import 'models/k9_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/app_bar/appbar_title.dart';
import 'package:shivang_s_crud/widgets/app_bar/custom_app_bar.dart';
import 'package:shivang_s_crud/widgets/custom_floating_button.dart';
import 'provider/k9_provider.dart';

class K9Screen extends StatefulWidget {
  const K9Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K9ScreenState createState() => K9ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K9Provider(),
      child: K9Screen(),
    );
  }
}

class K9ScreenState extends State<K9Screen> {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildEmployeeListSection(context),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_swipe_left_to_delete".tr,
                      style: CustomTextStyles.bodyMedium15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildToastMessages(context),
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
  Widget _buildEmployeeListSection(BuildContext context) {
    return Consumer<K9Provider>(
      builder: (context, provider, child) {
        return GroupedListView<EmployeelistsectionItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: provider.k9ModelObj.employeelistsectionItemList ?? [],
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
            return EmployeelistsectionItemWidget(
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
  Widget _buildToastMessages(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "msg_employee_data_has".tr,
              style: CustomTextStyles.bodyMediumPrimary15,
            ),
          ),
          Text(
            "lbl_undo".tr,
            style: CustomTextStyles.bodyMediumBlue50015,
          ),
        ],
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
}
