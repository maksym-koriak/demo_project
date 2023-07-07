import 'package:flutter/material.dart';

import 'package:flutter_interngram_delta/common/ui_kit/ui_constants.dart';

class FacebookLogo extends StatelessWidget {
  final double? height;
  final double? width;

  const FacebookLogo({
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
        UIConstants.facebookLogoPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
