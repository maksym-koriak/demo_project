import 'package:flutter/material.dart';

import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.done,
      color: AppColors.success,
    );
  }
}
