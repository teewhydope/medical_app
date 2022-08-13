import '../../common/utils/export_packages.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration decoration;
  final Color? color;
  final double letterSpacing;
  final int? maxLines;
  final bool isRubik;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.decoration = TextDecoration.none,
    this.color,
    this.letterSpacing = .5,
    this.maxLines,
    this.isRubik = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(
        text: text,
        style: TextStyle(fontSize: fontSize.sp),
      ),
      minFontSize: 0,
      stepGranularity: 0.1,
      style: isRubik
          ? GoogleFonts.rubik(
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              decoration: decoration,
              color: color,
              letterSpacing: letterSpacing,
            )
          : GoogleFonts.montserrat(
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              decoration: decoration,
              color: color,
              letterSpacing: letterSpacing,
            ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
