import 'package:flutter/material.dart';

import 'package:demo_app/common/ui_kit/buttons/i_text_button.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ConfirmButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ITextButton.blue(
      onPressed: onPressed,
      child: Text(
        AppLocalizations.of(context)!.confirm,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              color: onPressed != null
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).disabledColor,
            ),
      ),
    );
  }
}
