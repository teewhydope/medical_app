import 'package:medical_app/common/utils/export_packages.dart';
import '../../common/utils/export_files.dart';

import 'components/home_app_bar.dart';
import 'components/home_category.dart';
import 'components/home_top_rated.dart';
import 'components/home_upcoming_appointments.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 1.sh,
        child: ListView(
          children: [
            SizedBox(height: 22.h),
            const HomeAppBar(),
            SizedBox(height: 18.h),
            const HomeUpcomingAppointments(),
            Row(
              children: [
                const Expanded(
                  child: CustomTextField(),
                ),
                SizedBox(width: 16.w),
                Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          primaryColor,
                          primaryColor.withOpacity(.6),
                        ],
                      )),
                  child: SvgPicture.asset(
                    "${svgPath}filter.svg",
                    color: white,
                    width: 26,
                    height: 26,
                  ),
                )
              ],
            ),
            SizedBox(height: 22.h),
            const HomeCategory(),
            SizedBox(height: 22.h),
            const HomeTopRated(),
          ],
        ),
      ),
    );
  }
}
