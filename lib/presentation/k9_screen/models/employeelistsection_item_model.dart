import '../../../core/app_export.dart';

/// This class is used in the [employeelistsection_item_widget] screen.
class EmployeelistsectionItemModel {
  EmployeelistsectionItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
