import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: descriptionPadding),
      child: Text(
        AppLocalizations.of(context)!.sendCodeToReset,
        style: Theme.of(context).textTheme.labelSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
