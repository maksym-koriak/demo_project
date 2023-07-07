import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class AdditionalRightsTitle extends StatelessWidget {
  const AdditionalRightsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: titlePadding),
      child: Text(
        AppLocalizations.of(context)!.additionalRights,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.start,
      ),
    );
  }
}
