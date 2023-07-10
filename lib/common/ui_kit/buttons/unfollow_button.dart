import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_interngram_delta/common/ui_kit/buttons/i_elevated_button.dart';

class UnfollowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const UnfollowButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IElevatedButton.grey(
      onPressed: onPressed,
      child: Text(AppLocalizations.of(context)!.unfollow),
    );
  }
}
