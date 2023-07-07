import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_interngram_delta/common/app_colors/app_colors.dart';
import 'package:flutter_interngram_delta/common/ui_kit/app_bars/edit_profile_app_bar.dart';
import 'package:flutter_interngram_delta/common/ui_kit/text_fields/validation_icon_text_field/validation_icon_text_field.dart';
import 'package:flutter_interngram_delta/core/presentation/routing/app_router.gr.dart';
import 'package:flutter_interngram_delta/core/presentation/validation/validation_util.dart';
import 'package:flutter_interngram_delta/core/presentation/wrappers/authorized_flow_wrapper/bloc/authorized_flow_bloc.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/gallery_image_picker_screen/gallery_image_picker_style_constants.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/set_profile/add_photo/bloc/add_photo_bloc.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/set_profile/bio/widgets/bio_input/bio_input.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/sign_up_screen/style_constants.dart';
import 'package:flutter_interngram_delta/features/user/presentation/screens/edit_screen/bloc/edit_screen_bloc.dart';

class EditScreen extends StatelessWidget {
  final String? avatar;
  final Uint8List? imageBytes;
  final String? fullName;
  final String? nickname;
  final String? city;
  final String? bio;

  const EditScreen({
    super.key,
    this.avatar,
    this.imageBytes,
    this.fullName,
    this.nickname,
    this.city,
    this.bio,
  });

  @override
  Widget build(BuildContext context) {
    bool isNicknameValid = nickname != null;
    bool isBioValid = true;
    bool isFullNameValid = true;
    bool isPhotoUpdated = imageBytes != null;

    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController nicknameController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController bioController = TextEditingController();

    Uint8List? imageToSubmit;
    String? fullNameToSubmit;
    String? nicknameToSubmit;
    String? cityToSubmit;
    String? bioToSubmit;


    imageToSubmit = imageBytes;
    BlocProvider.of<AuthorizedFlowBloc>(context).add(
      const AuthorizedFlowEvent.getCurrentUser(),
    );

    return BlocBuilder<AuthorizedFlowBloc, AuthorizedFlowState>(
      builder: (context, state) {
        return state.maybeWhen(gotCurrentUser: (user) {
          fullNameToSubmit = user.fullName;
          nicknameToSubmit = user.nickName;
          cityToSubmit = user.city;
          bioToSubmit = user.bio;

          fullNameController.text = user.fullName ?? '';
          nicknameController.text = user.nickName!.contains('-')
              ? user.email!.replaceAll('@', '').replaceAll('gmail.com', '')
              : user.nickName!;
          cityController.text = user.city ?? '';
          bioController.text = user.bio ?? '';

          return BlocProvider(
            create: (context) => EditScreenBloc(),
            child: BlocConsumer<EditScreenBloc, EditScreenState>(
              listener: (context, state) {
                state.maybeWhen(
                  updateSuccess: () {
                    BlocProvider.of<AuthorizedFlowBloc>(context).add(
                      const AuthorizedFlowEvent.getCurrentUser(),
                    );
                    context.router.replace(
                      const ProfileRoute(),
                    );
                  },
                  updateFailure: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Could not update your profile'),
                      ),
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(
                    appBar: EditProfileAppBar(
                      onPressed: () {
                        context.router.replace(
                          const ProfileRoute(),
                        );
                      },
                    ),
                    body: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: widePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: gapFromTitle),
                            BlocProvider(
                              create: (context) => imageToSubmit != null
                                  ? (AddPhotoBloc()
                                    ..add(AddPhotoEvent.validatePhoto(
                                        imageToSubmit!)))
                                  : AddPhotoBloc(),
                              child: BlocConsumer<AddPhotoBloc, AddPhotoState>(
                                listener: (context, state) {
                                  state.maybeWhen(
                                      changed: () {
                                        context.router.replace(
                                          GalleryImagePickerRoute(
                                            editProfile: true,
                                            imageBytes: imageToSubmit,
                                          ),
                                        );
                                      },
                                      deleted: () {
                                        imageToSubmit = null;
                                      },
                                      orElse: () {});
                                },
                                builder: (context, state) {
                                  return Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: avatarInvalidBorderWidth,
                                              color: state.maybeWhen(
                                                invalid: () => AppColors.error,
                                                orElse: () =>
                                                    AppColors.transparentColor,
                                              ),
                                            ),
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                AppColors.textFieldBorder,
                                            backgroundImage: state.maybeWhen(
                                              deleted: () => null,
                                              initial: () => avatar != null
                                                  ? NetworkImage(avatar!)
                                                  : null,
                                              invalid: () =>
                                                  MemoryImage(imageToSubmit!),
                                              succeed: () =>
                                                  MemoryImage(imageToSubmit!),
                                              orElse: () => null,
                                            ),
                                            radius: avatarRadius,
                                          ),
                                        ),
                                        const SizedBox(
                                            height: disclaimerBottomPadding),
                                        Visibility(
                                          visible: state.maybeWhen(
                                            initial: () => true,
                                            orElse: () => false,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              BlocProvider.of<AddPhotoBloc>(
                                                      context)
                                                  .add(
                                                const AddPhotoEvent
                                                    .changePhoto(),
                                              );
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)!
                                                  .addPhoto,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium!
                                                  .copyWith(
                                                      color:
                                                          AppColors.secondary),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: state.maybeWhen(
                                            succeed: () => true,
                                            deleted: () => true,
                                            orElse: () => false,
                                          ),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  BlocProvider.of<AddPhotoBloc>(
                                                          context)
                                                      .add(
                                                    const AddPhotoEvent
                                                        .changePhoto(),
                                                  );
                                                },
                                                child: Text(
                                                  AppLocalizations.of(context)!
                                                      .changeProfilePhoto,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayMedium!
                                                      .copyWith(
                                                          color: AppColors
                                                              .secondary),
                                                ),
                                              ),
                                              const SizedBox(
                                                  height:
                                                      disclaimerBottomPadding),
                                              GestureDetector(
                                                onTap: () {
                                                  BlocProvider.of<AddPhotoBloc>(
                                                          context)
                                                      .add(
                                                    const AddPhotoEvent
                                                        .deletePhoto(),
                                                  );
                                                },
                                                child: Text(
                                                  AppLocalizations.of(context)!
                                                      .deleteProfilePhoto,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayMedium!
                                                      .copyWith(
                                                          color:
                                                              AppColors.error),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: widePadding),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.fullNameHint,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: textInputSmallVerticalPadding,
                              ),
                              child: ValidationIconTextField(
                                controller: fullNameController,
                                onFieldReady: (value) {
                                  fullNameToSubmit = value;
                                },
                                hintText:
                                    AppLocalizations.of(context)!.fullNameHint,
                                validator: (String? value) {
                                  EditScreenBloc fullNameBloc =
                                      BlocProvider.of<EditScreenBloc>(context);
                                  isFullNameValid = false;
                                  fullNameBloc.add(
                                    const EditScreenEvent.disableSubmit(),
                                  );
                                  if (value != null &&
                                      !fullNameValidationRegExp
                                          .hasMatch(value) &&
                                      value.isNotEmpty) {
                                    if (value.length < minFullNameLength) {
                                      return AppLocalizations.of(context)!
                                          .minLengthError(minFullNameLength);
                                    } else if (value.length >
                                        maxFullNameLength) {
                                      return AppLocalizations.of(context)!
                                          .maxLengthError(maxFullNameLength);
                                    } else {
                                      return AppLocalizations.of(context)!
                                          .invalidFullNameCharsError;
                                    }
                                  }
                                  isFullNameValid = true;

                                  fullNameBloc.add(
                                    const EditScreenEvent.enableSubmit(),
                                  );

                                  return null;
                                },
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.nicknameHint,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: textInputSmallVerticalPadding,
                              ),
                              child: ValidationIconTextField(
                                controller: nicknameController,
                                onFieldReady: (value) {
                                  nicknameToSubmit = value;
                                },
                                formErrorsStream:
                                    BlocProvider.of<EditScreenBloc>(context)
                                        .stream
                                        .map(
                                          (state) => state.maybeWhen(
                                            validationFailureNicknameExists:
                                                () => AppLocalizations.of(
                                                        context)!
                                                    .nicknameAlreadyExistsError,
                                            validationFailureUnknown: () =>
                                                AppLocalizations.of(context)!
                                                    .unknownError,
                                            orElse: () => null,
                                          ),
                                        ),
                                hintText:
                                    AppLocalizations.of(context)!.nicknameHint,
                                validator: (String? value) {
                                  EditScreenBloc nicknameBloc =
                                      BlocProvider.of<EditScreenBloc>(context);
                                  nicknameBloc.add(
                                    const EditScreenEvent.disableSubmit(),
                                  );
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!
                                        .requiredFieldError;
                                  } else if (!nicknameValidationRegExp
                                      .hasMatch(value)) {
                                    if (value.length < minNicknameLength) {
                                      return AppLocalizations.of(context)!
                                          .minLengthError(minNicknameLength);
                                    } else if (value.length >
                                        maxNicknameLength) {
                                      return AppLocalizations.of(context)!
                                          .maxLengthError(maxNicknameLength);
                                    } else {
                                      return AppLocalizations.of(context)!
                                          .invalidNicknameCharsError;
                                    }
                                  }
                                  nicknameBloc.add(
                                    const EditScreenEvent.enableSubmit(),
                                  );
                                  return null;
                                },
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.city,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: textInputSmallVerticalPadding,
                              ),
                              child: TextField(
                                controller: cityController,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!
                                      .enterCityHint,
                                ),
                                onChanged: (String input) {
                                  if (input.isEmpty) {
                                    cityToSubmit = null;
                                  } else {
                                    cityToSubmit = input;
                                  }
                                },
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.bioHint,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: textInputSmallVerticalPadding,
                              ),
                              child: BioInput(
                                controller: bioController,
                                onBioReady: (String bio) {
                                  bioToSubmit = bio;
                                  isBioValid = true;

                                  BlocProvider.of<EditScreenBloc>(context).add(
                                      const EditScreenEvent.enableSubmit());
                                },
                                onBioInvalid: () {
                                  isBioValid = false;
                                  BlocProvider.of<EditScreenBloc>(context).add(
                                    const EditScreenEvent.disableSubmit(),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: textInputVerticalPadding),
                              child: SizedBox(
                                height: buttonHeight,
                                width: buttonWidth,
                                child: ElevatedButton(
                                  onPressed: state.maybeWhen(
                                    enabledSubmit: () => () {
                                      print('try save changes');
                                      BlocProvider.of<EditScreenBloc>(context)
                                          .add(
                                        EditScreenEvent.trySaveChanges(
                                          imageToSubmit,
                                          fullNameToSubmit,
                                          nicknameToSubmit!,
                                          cityToSubmit,
                                          bioToSubmit,
                                        ),
                                      );
                                    },
                                    orElse: () => null,
                                  ),
                                  child: Text(AppLocalizations.of(context)!
                                      .saveChanges),
                                ),
                              ),
                            ),
                            const SizedBox(height: textInputVerticalPadding)
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }, orElse: () {
          return const Scaffold(
            body: Center(
              child: CupertinoActivityIndicator(
                radius: initialLoadingIndicatorRadius,
              ),
            ),
          );
        });
      },
    );
  }
}
