import '../../common/utils/export_files.dart';
import '../../common/utils/export_packages.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final bool isTrailingIconVisible;
  final Function? onTap;
  const CustomElevatedButton({
    Key? key,
    required this.label,
    this.isTrailingIconVisible = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            CustomText(
              text: label,
              color: whiteShade800,
              fontSize: 16,
            ),
            isTrailingIconVisible
                ? const Icon(
                    MdiIcons.chevronRight,
                    color: white,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
