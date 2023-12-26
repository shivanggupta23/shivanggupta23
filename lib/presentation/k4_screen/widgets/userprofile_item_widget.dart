import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userprofileItemModelObj.username!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Text(
            userprofileItemModelObj.jobTitle!,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 9.v),
          Text(
            userprofileItemModelObj.dateRange!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
