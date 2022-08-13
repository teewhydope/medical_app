import '../../../../common/utils/export_files.dart';
import '../../../../common/utils/export_packages.dart';

class HomeTopRatedDoctorSchedule extends StatefulWidget {
  const HomeTopRatedDoctorSchedule({Key? key}) : super(key: key);

  @override
  State<HomeTopRatedDoctorSchedule> createState() =>
      _HomeTopRatedDoctorScheduleState();
}

class _HomeTopRatedDoctorScheduleState
    extends State<HomeTopRatedDoctorSchedule> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .11.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: schedule,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10.h),
          Flexible(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: scheduleData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = scheduleData[index].id;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          //vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          gradient: selectedIndex == scheduleData[index].id
                              ? LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    primaryColor,
                                    primaryColor.withOpacity(.6),
                                  ],
                                )
                              : null,
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: scheduleData[index].day,
                              textAlign: TextAlign.center,
                              color: grey,
                              fontSize: 10,
                            ),
                            SizedBox(height: 2.h),
                            CustomText(
                              text: scheduleData[index].date,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
