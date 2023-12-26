import '../models/seventeen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class SeventeenItemWidget extends StatelessWidget {
  SeventeenItemWidget(
    this.seventeenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventeenItemModel seventeenItemModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return CustomDropDown(
      width: 396.h,
      icon: Container(
        margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 10.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowdropdownfill1wght400grad0opsz243,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      hintText: "msg_flutter_developer".tr,
      items: seventeenItemModelObj?.dropdownItemList ?? [],
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
      onChanged: (value) {
        selectedDropDownValue = value;
      },
    );
  }
}
