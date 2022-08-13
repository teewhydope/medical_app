import '../../../../common/utils/export_files.dart';
import '../../../../common/utils/export_packages.dart';

class HomeTopRatedDoctorDetailHeader extends StatelessWidget {
  final String name;
  final String role;
  final String rating;
  final String roleIcon;
  final String image;
  final String visitingHour;
  const HomeTopRatedDoctorDetailHeader({
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
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 0.35.sh,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white.withOpacity(.1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: const Center(
                        child: Icon(
                          MdiIcons.arrowLeft,
                          color: white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const CustomText(
                    text: details,
                    fontSize: 20,
                    color: white,
                  ),
                  SizedBox(width: .1.sw)
                ],
              ),
              SizedBox(height: 14.h),
              CustomText(
                text: "Dr. $name",
                fontSize: 19,
                color: white,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SvgPicture.asset(
                    "$svgPath$roleIcon.svg",
                    width: 16.w,
                    height: 16.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 6.w),
                  CustomText(
                    text: role,
                    color: whiteShade600,
                  ),
                  SizedBox(width: 6.w),
                  SvgPicture.asset(
                    "${svgPath}star.svg",
                    width: 12.w,
                    height: 12.h,
                    fit: BoxFit.cover,
                    color: yellowShade800,
                  ),
                  SizedBox(width: 6.w),
                  CustomText(
                    text: rating,
                    color: whiteShade600,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomText(
                text: visitingHour,
                color: whiteShade600,
                fontSize: 11,
              ),
              SizedBox(height: 4.h),
              CustomText(
                text: visitingHour,
                color: white,
              ),
              SizedBox(height: 20.h),
              const CustomText(
                text: totalPatients,
                color: whiteShade600,
                fontSize: 11,
              ),
              SizedBox(height: 4.h),
              const CustomText(
                text: totalPatientsCount,
                color: white,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
              child: Image.asset(
                "$imagePath$image.png",
                height: .24.sh,
                width: .45.sw,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
