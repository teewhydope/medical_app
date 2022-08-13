import '../../../../common/utils/export_files.dart';
import '../../../../common/utils/export_packages.dart';

class HomeTopRatedDoctorDescription extends StatelessWidget {
  const HomeTopRatedDoctorDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: description,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 6.h),
        CustomText(
          text: dummDescriptionText,
          textAlign: TextAlign.justify,
          letterSpacing: 1,
          fontSize: 11,
          color: black.withOpacity(.6),
        ),
      ],
    );
  }
}
