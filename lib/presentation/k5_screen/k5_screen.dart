import '../k5_screen/widgets/seventeen_item_widget.dart';
import 'models/k5_model.dart';
import 'models/seventeen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/custom_elevated_button.dart';
import 'package:shivang_s_crud/widgets/custom_text_form_field.dart';
import 'package:table_calendar/table_calendar.dart';
import 'provider/k5_provider.dart';

class K5Screen extends StatefulWidget {
  const K5Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K5ScreenState createState() => K5ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K5Provider(),
      child: K5Screen(),
    );
  }
}

class K5ScreenState extends State<K5Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 834.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildAddEmployeeDetails(context),
              _buildSixtyNine(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 143.v,
                  ),
                  decoration: AppDecoration.fillBlack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 24.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildFrame(context),
                            SizedBox(height: 16.v),
                            _buildFrame1(context),
                            SizedBox(height: 24.v),
                            _buildCalendar(context),
                            SizedBox(height: 35.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 56.v),
                      _buildFrame2(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddEmployeeDetails(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillBlue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Text(
              "msg_add_employee_details".tr,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonFILLwghtGRADopsz(BuildContext context) {
    return Selector<K5Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.personFILLwghtGRADopszController,
      builder: (context, personFILLwghtGRADopszController, child) {
        return CustomTextFormField(
          controller: personFILLwghtGRADopszController,
          hintText: "lbl_joseph_manadan".tr,
          textInputAction: TextInputAction.done,
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
  Widget _buildSixtyNine(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 84.v,
            right: 16.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildPersonFILLwghtGRADopsz(context),
              SizedBox(height: 23.v),
              Expanded(
                child: Consumer<K5Provider>(
                  builder: (context, provider, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 41.v,
                        crossAxisCount: 1,
                        mainAxisSpacing: 1.h,
                        crossAxisSpacing: 1.h,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: provider.k5ModelObj.seventeenItemList.length,
                      itemBuilder: (context, index) {
                        SeventeenItemModel model =
                            provider.k5ModelObj.seventeenItemList[index];
                        return SeventeenItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextMonday(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 36.v,
        text: "lbl_next_monday".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 68.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillBlue50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_today".tr,
                  style: CustomTextStyles.bodyMediumBlue500,
                ),
              ],
            ),
          ),
        ),
        _buildNextMonday(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 44.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillBlue50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_next_tuesday".tr,
                  style: CustomTextStyles.bodyMediumBlue500,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 47.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillBlue50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            "lbl_after_1_week".tr,
            style: CustomTextStyles.bodyMediumBlue500,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Consumer<K5Provider>(
      builder: (context, provider, child) {
        return SizedBox(
          height: 276.v,
          width: 358.h,
          child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: provider.rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
              todayTextStyle: TextStyle(
                color: appTheme.blue500,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              todayDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
                border: Border.all(
                  color: appTheme.blue500,
                  width: 1.h,
                ),
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
            headerVisible: false,
            rowHeight: 28.adaptSize,
            focusedDay: provider.focusedDay ?? DateTime.now(),
            rangeStartDay: provider.rangeStart,
            rangeEndDay: provider.rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(selectedDay, selectedDay)) {
                provider.focusedDay = focusedDay;
                provider.selectedDay = selectedDay;
                provider.rangeSelectionMode = RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              provider.focusedDay = focusedDay;
              provider.rangeEnd = end;
              provider.rangeStart = start;
              provider.rangeSelectionMode = RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              provider.focusedDay = focusedDay;
            },
          ),
        );
      },
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
      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.v,
        bottom: 16.v,
      ),
      decoration: AppDecoration.outlineGray1001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.v),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 23.v,
                  width: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_5_sep_2023".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          _buildCancel(context),
          _buildSave(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancel1(BuildContext context) {
    return CustomElevatedButton(
      width: 73.h,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillBlue,
    );
  }

  /// Section Widget
  Widget _buildSave1(BuildContext context) {
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
      decoration: AppDecoration.outlineGray1002,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCancel1(context),
          _buildSave1(context),
        ],
      ),
    );
  }
}
