import '../../../common/utils/export_packages.dart';

class HomeCategoryModel {
  final int id;
  final String categoryName;
  final String? icon;
  const HomeCategoryModel({
    Key? key,
    required this.id,
    required this.categoryName,
    required this.icon,
  });
}

List<HomeCategoryModel> categoryData = const [
  HomeCategoryModel(id: 1, categoryName: "Dentist", icon: "tooth"),
  HomeCategoryModel(id: 2, categoryName: "Heart surgeon", icon: "heartbeat"),
  HomeCategoryModel(id: 3, categoryName: "Bone surgery", icon: "bone"),
  HomeCategoryModel(id: 4, categoryName: "Optician", icon: "eye"),
  HomeCategoryModel(id: 5, categoryName: "Medical checkup", icon: "body"),
  HomeCategoryModel(
      id: 6, categoryName: "Bone marrow transplant", icon: "knee"),
];
