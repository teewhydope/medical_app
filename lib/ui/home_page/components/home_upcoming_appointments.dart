import '../../../common/utils/export_files.dart';
import '../../../common/utils/export_packages.dart';

class HomeUpcomingAppointments extends StatelessWidget {
  const HomeUpcomingAppointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: upcomingAppointment,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SeeAllText(),
          ],
        ),
        SizedBox(
          height: .22.sh,
          child: Stack(
            children: [
              renderAppointmentCard(
                bottomPosition: 20,
                height: 0.12.sh,
                color: primaryColor.withOpacity(.3),
                padding: 16,
              ),
              renderAppointmentCard(
                bottomPosition: 24,
                height: .14.sh,
                color: primaryColor.withOpacity(.6),
                padding: 8,
              ),
              renderAppointmentCard(
                bottomPosition: 28,
                height: .16.sh,
                color: primaryColor,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 16.r,
                            backgroundImage: const AssetImage(
                                "${imagePath}profile_icon.jpg"),
                            backgroundColor: grey,
                          ),
                          SizedBox(width: 10.h),
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CustomText(
                                    text: "Dr. Rohul Alom",
                                    fontSize: 13,
                                    color: whiteShade600,
                                  ),
                                  SizedBox(height: 2.h),
                                  const CustomText(
                                    text: "Tooth,Specialist",
                                    color: secondaryColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert_rounded,
                            color: white,
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          renderChip(
                            MdiIcons.calendarMonthOutline,
                            "Sep 18,2022",
                          ),
                          SizedBox(width: 20.w),
                          renderChip(
                            MdiIcons.clockOutline,
                            "(11 Am-03 Pm)",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget renderChip(
    IconData icon,
    String label,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: white.withOpacity(.1),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: whiteShade600,
            size: 18,
          ),
          SizedBox(width: 8.w),
          CustomText(
            text: label,
            fontSize: 10,
            color: whiteShade600,
          )
        ],
      ),
    );
  }

  Widget renderAppointmentCard({
    double? bottomPosition,
    double? height,
    Color? color,
    double padding = 0,
    Widget? child,
  }) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: bottomPosition,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              20.r,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
