import 'models/k11_model.dart';
import 'package:flutter/material.dart';
import 'package:shivang_s_crud/core/app_export.dart';
import 'package:shivang_s_crud/widgets/custom_drop_down.dart';
import 'package:shivang_s_crud/widgets/custom_elevated_button.dart';
import 'package:shivang_s_crud/widgets/custom_text_form_field.dart';
import 'package:table_calendar/table_calendar.dart';
import 'provider/k11_provider.dart';

class K11Screen extends StatefulWidget {
  const K11Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K11ScreenState createState() => K11ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K11Provider(),
      child: K11Screen(),
    );
  }
}

class K11ScreenState extends State<K11Screen> {
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
              _buildAddEmployeeDetailsFrame(context),
              _buildEightyFiveFrame(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 169.v,
                  ),
                  decoration: AppDecoration.fillBlack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCalendarFrame(context),
                      SizedBox(height: 56.v),
                      _buildThumbsUpFrame(context),
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
  Widget _buildAddEmployeeDetailsFrame(BuildContext context) {
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
  Widget _buildEmployeeName(BuildContext context) {
    return Selector<K11Provider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.employeeNameController,
      builder: (context, employeeNameController, child) {
        return CustomTextFormField(
          controller: employeeNameController,
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
  Widget _buildEightyFiveFrame(BuildContext context) {
    return Align(
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
            _buildEmployeeName(context),
            SizedBox(height: 23.v),
            Selector<K11Provider, K11Model?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.k11ModelObj,
              builder: (context, k11ModelObj, child) {
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
                  items: k11ModelObj?.dropdownItemList ?? [],
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
                    context.read<K11Provider>().onSelected(value);
                  },
                );
              },
            ),
            SizedBox(height: 23.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildEventFrame(
                  context,
                  tillNowText: "lbl_today".tr,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightAlt,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v),
                ),
                _buildEventFrame(
                  context,
                  tillNowText: "lbl_till_now".tr,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNoDate(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 36.v,
        text: "lbl_no_date".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildToday(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 36.v,
        text: "lbl_today".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.bodyMediumBlue500,
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarFrame(BuildContext context) {
    return Container(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNoDate(context),
              _buildToday(context),
            ],
          ),
          SizedBox(height: 24.v),
          Consumer<K11Provider>(
            builder: (context, provider, child) {
              return SizedBox(
                height: 276.v,
                width: 357.h,
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
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  headerVisible: false,
                  focusedDay: provider.focusedDay ?? DateTime.now(),
                  rangeStartDay: provider.rangeStart,
                  rangeEndDay: provider.rangeEnd,
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(selectedDay, selectedDay)) {
                      provider.focusedDay = focusedDay;
                      provider.selectedDay = selectedDay;
                      provider.rangeSelectionMode =
                          RangeSelectionMode.toggledOn;
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
          ),
          SizedBox(height: 35.v),
        ],
      ),
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
  Widget _buildThumbsUpFrame(BuildContext context) {
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
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_no_date".tr,
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

  /// Common widget
  Widget _buildEventFrame(
    BuildContext context, {
    required String tillNowText,
  }) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEventfill0wght300grad0opsz2411,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Text(
              tillNowText,
              style: CustomTextStyles.bodyMediumOnPrimary.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
