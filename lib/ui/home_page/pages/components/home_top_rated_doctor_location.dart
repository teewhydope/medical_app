import '../../../../common/utils/export_files.dart';
import '../../../../common/utils/export_packages.dart';

class HomeTopRatedDoctorLocation extends StatefulWidget {
  const HomeTopRatedDoctorLocation({Key? key}) : super(key: key);

  @override
  State<HomeTopRatedDoctorLocation> createState() =>
      _HomeTopRatedDoctorLocationState();
}

class _HomeTopRatedDoctorLocationState
    extends State<HomeTopRatedDoctorLocation> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _myLocation = CameraPosition(
    target: LatLng(6.8988, 3.4049),
    zoom: 10.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: location,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 6.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            height: 0.15.sh,
            child: GoogleMap(
              initialCameraPosition: _myLocation,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ),
      ],
    );
  }
}
