import '../../../common/utils/export_files.dart';
import '../../../common/utils/export_packages.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: category,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SeeAllText(),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 30.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categoryData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "$svgPath${categoryData[index].icon}.svg",
                          width: 20.w,
                          height: 20.h,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        CustomText(
                          text: categoryData[index].categoryName,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
