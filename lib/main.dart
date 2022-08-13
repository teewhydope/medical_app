import 'common/utils/export_files.dart';
import 'common/utils/export_packages.dart';

import 'ui/landing_page/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            //fontFamily: shinePro,
            colorScheme: ColorScheme.fromSwatch(
              brightness: Brightness.light,
              primarySwatch: createMaterialColor(
                primaryColor,
              ),
            ),
          ),
          home: child,
          useInheritedMediaQuery: false,
          debugShowCheckedModeBanner: false,
        );
      },
      child: const LandingPage(),
    );
  }
}
