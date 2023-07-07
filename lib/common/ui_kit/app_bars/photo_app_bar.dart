import 'package:flutter/material.dart';

import 'package:demo_app/common/ui_kit/app_bars/i_app_bar.dart';
import 'package:demo_app/common/ui_kit/buttons/cancel_button.dart';
import 'package:demo_app/common/ui_kit/ui_constants.dart';

class PhotoAppBar extends StatelessWidget with PreferredSizeWidget {
  final VoidCallback onPressed;

  const PhotoAppBar({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IAppBar.basic(
      title: AppLocalizations.of(context)!.photo,
      leading: CancelButton(
        onPressed: onPressed,
      ),
      leadingWidth: UIConstants.leadingWidth,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}