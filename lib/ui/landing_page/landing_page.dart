import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:medical_app/common/utils/export_files.dart';
import 'package:medical_app/common/utils/export_packages.dart';

import '../home_page/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<_LandingPageState> _sliderKey = GlobalKey();
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
                    Flexible(
                      child: CarouselSlider.builder(
                          key: _sliderKey,
                          itemCount: 3,
                          unlimitedMode: true,
                          slideTransform: const CubeTransform(),
                          slideIndicator: CircularSlideIndicator(
                            padding: const EdgeInsets.only(bottom: 32),
                            currentIndicatorColor: primaryColor,
                          ),
                          slideBuilder: (index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CustomText(
                                  text: "Perfect HealthCare Solution",
                                  maxLines: 2,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20.h),
                                const CustomText(
                                  text:
                                      "Find a specialist that you only need on a consulting application",
                                  fontWeight: FontWeight.w600,
                                  color: grey,
                                  fontSize: 13,
                                  textAlign: TextAlign.center,
                                  isRubik: false,
                                ),
                                SizedBox(height: 20.h),
                              ],
                            );
                          }),
                    ),
                    CustomElevatedButton(
                      label: "Get Started",
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage())),
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
