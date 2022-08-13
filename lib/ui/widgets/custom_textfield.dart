import '../../common/utils/export_files.dart';
import '../../common/utils/export_packages.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        alignLabelWithHint: true,
        isDense: true,
        filled: true,
        prefixIconConstraints: BoxConstraints(
          minHeight: 26.h,
          minWidth: 26.w,
        ),
        hintStyle: TextStyle(
            textBaseline: TextBaseline.alphabetic,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: grey),
        fillColor: secondaryColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: white),
        ),
        prefixIcon: SvgPicture.asset(
          "${svgPath}search.svg",
        ),
        hintText: "Search...",
      ),
    );
  }
}
