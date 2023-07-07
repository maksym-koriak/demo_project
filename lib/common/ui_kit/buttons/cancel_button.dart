import 'package:flutter/material.dart';

import 'package:demo_app/common/ui_kit/buttons/i_text_button.dart';

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ITextButton.lightGrey(
      onPressed: onPressed,
      child: Text(
        AppLocalizations.of(context)!.cancel,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
