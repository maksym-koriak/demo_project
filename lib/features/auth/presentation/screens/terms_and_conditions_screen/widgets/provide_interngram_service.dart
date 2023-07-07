import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/style_constants.dart';

class ProvideInterngramService extends StatelessWidget {
  const ProvideInterngramService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: titlePadding),
      child: Text(
        AppLocalizations.of(context)!.provideInterngramService,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.hintText),
        textAlign: TextAlign.start,
      ),
    );
  }
}
