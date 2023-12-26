import 'package:shivang_s_crud/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

/// This class is used in the [seventeen_item_widget] screen.
class SeventeenItemModel {
  SeventeenItemModel({
    this.dropdownItemList,
    this.id,
  }) {
    dropdownItemList = dropdownItemList ??
        [
          SelectionPopupModel(
            id: 1,
            title: "Item One",
            isSelected: true,
          ),
          SelectionPopupModel(
            id: 2,
            title: "Item Two",
          ),
          SelectionPopupModel(
            id: 3,
            title: "Item Three",
          )
        ];
    id = id ?? "";
  }

  List<SelectionPopupModel>? dropdownItemList;

  String? id;
}
