import 'package:flutter/material.dart';

import 'package:flutter_interngram_delta/common/ui_kit/ui_constants.dart';

class InterngramLogo extends StatelessWidget {
  final double? height;
  final double? width;

  const InterngramLogo({
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        UIConstants.logoPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
