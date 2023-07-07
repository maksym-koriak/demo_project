import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';
import 'package:flutter_interngram_delta/common/app_icons/app_icons.dart';
import 'package:flutter_interngram_delta/core/presentation/routing/app_router.gr.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';

import '../../../../auth/presentation/screens/sign_up_screen/style_constants.dart';

class EditScreenTab extends StatelessWidget {
  final User user;

  const EditScreenTab({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leadingWidth: double.infinity,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: widePadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                user.nickName!.contains('-')
                    ? user.email!.replaceAll('@gmail.com', '')
                    : user.nickName!,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widePadding),
                child: Icon(
                  AppIcons.message,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: widePadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: widePadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundColor: AppColors.textFieldBorder,
                    backgroundImage:
                        user.photo != null ? NetworkImage(user.photo!) : null,
                  ),
                  Column(
                    children: [
                      Text(
                        user.posts!.count.toString(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        'Posts',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        user.followedBy!.count.toString(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        'Followers',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        user.following!.count.toString(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        'Following',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: user.fullName != null,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      user.fullName != null ? user.fullName! : '',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: user.bio != null,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  user.bio != null ? user.bio! : '',
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Visibility(
              visible: user.city != null,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  user.city != null ? user.city! : '',
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: widePadding),
              child: SizedBox(
                height: buttonHeight,
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(
                      EditRoute(
                        avatar: user.photo,
                        fullName: user.fullName,
                        nickname: user.nickName,
                        city: user.city,
                        bio: user.bio,
                      ),
                    );
                  },
                  child: Text(AppLocalizations.of(context)!.editProfile),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
