import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.username,
    this.jobTitle,
    this.dateRange,
    this.id,
  }) {
    username = username ?? "Emily Davis";
    jobTitle = jobTitle ?? "Full-stack Developer";
    dateRange = dateRange ?? "21 Sep, 2022 - 1 Jan, 2023";
    id = id ?? "";
  }

  String? username;

  String? jobTitle;

  String? dateRange;

  String? id;
}
