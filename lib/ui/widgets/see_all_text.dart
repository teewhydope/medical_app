import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../common/utils/export_files.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: seeAll,
      color: grey,
    );
  }
}
