import 'package:medical_app/ui/home_page/pages/home_top_rated_doctor_detail.dart';

import '../../../common/utils/export_files.dart';
import '../../../common/utils/export_packages.dart';

class HomeTopRated extends StatelessWidget {
  const HomeTopRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: topRatedDoctor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SeeAllText(),
          ],
        ),
        SizedBox(height: 16.h),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: topRatedData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopRatedDoctorDetail(
                      name: topRatedData[index].doctorName,
                      role: topRatedData[index].doctorRole,
                      rating: topRatedData[index].rating,
                      roleIcon: topRatedData[index].roleIcon,
                      image: topRatedData[index].image,
                      visitingHour: topRatedData[index].visitingHour,
                    ),
                  ),
                ),
                child: Slidable(
                  key: Key(topRatedData[index].id.toString()),
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    extentRatio: .3,
                    children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        icon: Icons.chat_outlined,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(
                          14.r,
                        ),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Container(
                              height: 60.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Image.asset(
                                "$imagePath${topRatedData[index].image}.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Dr. ${topRatedData[index].doctorName}",
                                ),
                                SizedBox(height: 04.w),
                                CustomText(
                                  text: topRatedData[index].doctorRole,
                                  color: grey,
                                  fontSize: 11,
                                ),
                                SizedBox(height: 06.w),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "${svgPath}star.svg",
                                          width: 12.w,
                                          height: 12.h,
                                          fit: BoxFit.cover,
                                          color: yellowShade800,
                                        ),
                                        SizedBox(width: 06.w),
                                        CustomText(
                                          text: topRatedData[index].rating,
                                          color: grey,
                                          fontSize: 11,
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 16.w),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "${svgPath}clock.svg",
                                          width: 16.w,
                                          height: 16.h,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 06.w),
                                        CustomText(
                                          text:
                                              topRatedData[index].visitingHour,
                                          color: grey,
                                          fontSize: 11,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
