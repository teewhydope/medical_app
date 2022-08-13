import '../../../common/utils/export_packages.dart';

class HomeTopRatedModel {
  final int id;
  final String doctorName;
  final String doctorRole;
  final String rating;
  final String visitingHour;
  final String roleIcon;
  final String image;

  const HomeTopRatedModel({
    Key? key,
    required this.id,
    required this.doctorName,
    required this.doctorRole,
    required this.image,
    required this.rating,
    required this.visitingHour,
    required this.roleIcon,
  });
}

List<HomeTopRatedModel> topRatedData = const [
  HomeTopRatedModel(
    id: 1,
    doctorName: "Alice Wonderland",
    doctorRole: "Heart Surgeon",
    image: "alice",
    rating: "4.3",
    visitingHour: "12 Pm-03 Pm",
    roleIcon: "heartbeat",
  ),
  HomeTopRatedModel(
    id: 2,
    doctorName: "John Doe",
    doctorRole: "Optician",
    image: "joe",
    rating: "4.9",
    visitingHour: "11 Am-02 Pm",
    roleIcon: "eye",
  ),
  HomeTopRatedModel(
    id: 3,
    doctorName: "Joy Rose",
    doctorRole: "Dentist",
    image: "joy",
    rating: "4.5",
    visitingHour: "09 Am-11 Am",
    roleIcon: "tooth",
  ),
  HomeTopRatedModel(
    id: 4,
    doctorName: "Ronald dinho",
    doctorRole: "Consultant",
    image: "ronald",
    rating: "4.7",
    visitingHour: "10 Am-11 Am",
    roleIcon: "body",
  ),
];
