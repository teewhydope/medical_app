import 'package:medical_app/common/utils/export_files.dart';
import 'package:medical_app/common/utils/export_packages.dart';

import '../nav_bar.dart/bottom_navigation_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late CarouselController _carouselController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        child: Stack(
          children: [
            Container(
              color: primaryColor,
              height: .6.sh,
              child: Stack(
                children: [
                  Image.asset("${imagePath}spiral.png"),
                  Image.asset("${imagePath}joe.png"),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: .5.sh,
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(200, 60),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    CarouselSlider.builder(
                      itemCount: 3,
                      carouselController: _carouselController,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        //_carouselController.animateToPage(_currentPage);

                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(
                              text: landingPageTitle,
                              maxLines: 2,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20.h),
                            const CustomText(
                              text: landingPageSubtitle,
                              fontWeight: FontWeight.w600,
                              color: grey,
                              fontSize: 13,
                              textAlign: TextAlign.center,
                              isRubik: false,
                            ),
                            SizedBox(height: 20.h),
                          ],
                        );
                      },
                      options: CarouselOptions(
                          height: .25.sh,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentPage = index;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3].asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              _carouselController.animateToPage(entry.key),
                          child: Container(
                            width: _currentPage == entry.key ? 18.0 : 10.0,
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(8.r),
                              color: _currentPage == entry.key
                                  ? primaryColor
                                  : grey,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 40.h),
                    CustomElevatedButton(
                      label: getStarted,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBar())),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
