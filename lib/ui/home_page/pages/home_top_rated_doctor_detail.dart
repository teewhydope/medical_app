import 'package:medical_app/ui/home_page/pages/components/home_top_rated_doctor_description.dart';
import 'package:medical_app/ui/home_page/pages/components/home_top_rated_doctor_location.dart';

import '../../../common/utils/export_files.dart';
import '../../../common/utils/export_packages.dart';
import 'components/home_top_rated_doctor_detail_header.dart';
import 'components/home_top_rated_doctor_schedule.dart';

class TopRatedDoctorDetail extends StatelessWidget {
  final String name;
  final String role;
  final String rating;
  final String roleIcon;
  final String image;
  final String visitingHour;

  const TopRatedDoctorDetail({
    Key? key,
    required this.name,
    required this.role,
    required this.rating,
    required this.roleIcon,
    required this.image,
    required this.visitingHour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            HomeTopRatedDoctorDetailHeader(
              name: name,
              role: role,
              rating: rating,
              roleIcon: roleIcon,
              image: image,
              visitingHour: visitingHour,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 22.h),
                  const HomeTopRatedDoctorDescription(),
                  SizedBox(height: 20.h),
                  const HomeTopRatedDoctorSchedule(),
                  SizedBox(height: 20.h),
                  const HomeTopRatedDoctorLocation(),
                  SizedBox(height: 16.h),
                  const CustomElevatedButton(
                    label: bookAppointment,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
