import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';

class CommitmentText extends StatelessWidget {
  const CommitmentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.returnCommitment,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: AppColors.hintText),
      textAlign: TextAlign.start,
    );
  }
}
