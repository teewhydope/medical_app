import '../../../common/utils/export_packages.dart';

class ScheduleModel {
  final int id;
  final String day;
  final String date;
  const ScheduleModel({
    Key? key,
    required this.id,
    required this.day,
    required this.date,
  });
}

List<ScheduleModel> scheduleData = const [
  ScheduleModel(id: 1, day: "Sat", date: "12"),
  ScheduleModel(id: 2, day: "Sun", date: "13"),
  ScheduleModel(id: 3, day: "Mon", date: "14"),
  ScheduleModel(id: 4, day: "Tue", date: "15"),
  ScheduleModel(id: 5, day: "Wed", date: "16"),
  ScheduleModel(id: 6, day: "Thu", date: "17"),
  ScheduleModel(id: 7, day: "Fri", date: "18"),
  ScheduleModel(id: 8, day: "Sat", date: "19"),
  ScheduleModel(id: 9, day: "Sun", date: "20"),
  ScheduleModel(id: 10, day: "Mon", date: "21"),
  ScheduleModel(id: 11, day: "Tue", date: "22"),
  ScheduleModel(id: 12, day: "Wed", date: "23"),
  ScheduleModel(id: 13, day: "Thu", date: "24"),
  ScheduleModel(id: 14, day: "Fri", date: "25"),
];
