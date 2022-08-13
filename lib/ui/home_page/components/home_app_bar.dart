import 'package:medical_app/common/utils/export_packages.dart';

import '../../../common/utils/export_files.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: const AssetImage("${imagePath}profile_icon.jpg"),
              backgroundColor: grey,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Welcome back",
                  fontSize: 11,
                  color: grey,
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const CustomText(
                      text: "Nazmul",
                      fontSize: 16,
                    ),
                    SizedBox(width: 4.w),
                    SvgPicture.asset(
                      "${svgPath}wave.svg",
                      width: 16.w,
                      height: 16.h,
                      fit: BoxFit.cover,
                      color: yellowShade800,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              "${svgPath}harmburger.svg",
              color: black,
              width: 10.w,
              height: 10.h,
            ),
          ),
        ),
      ],
    );
  }
}
