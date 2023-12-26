import 'models/k12_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/custom_elevated_button.dart';
import 'provider/k12_provider.dart';

// ignore_for_file: must_be_immutable
class K12Bottomsheet extends StatefulWidget {
  const K12Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  K12BottomsheetState createState() => K12BottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K12Provider(),
      child: K12Bottomsheet(),
    );
  }
}

class K12BottomsheetState extends State<K12Bottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 151.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL16,
            ),
            child: Text(
              "msg_product_designer".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 1.v),
          CustomElevatedButton(
            height: 52.v,
            text: "msg_flutter_developer".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: theme.textTheme.bodyLarge!,
          ),
          SizedBox(height: 1.v),
          CustomElevatedButton(
            height: 52.v,
            text: "lbl_qa_tester".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: theme.textTheme.bodyLarge!,
          ),
          SizedBox(height: 1.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 160.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "lbl_product_owner".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
