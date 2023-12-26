import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
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
                "lbl_samantha_lee".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_full_stack_developer".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_from_21_sep_2022".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }
}
