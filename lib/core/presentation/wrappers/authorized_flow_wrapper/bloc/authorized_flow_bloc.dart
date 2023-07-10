import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_interngram_delta/core/domain/failures/failures.dart';
import 'package:flutter_interngram_delta/core/domain/usecase/usecase.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/update_user_optional_flow.dart';
import 'package:flutter_interngram_delta/features/user/domain/entities/user.dart';
import 'package:flutter_interngram_delta/features/user/domain/use_cases/get_current_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_interngram_delta/di/di_container.dart' as di;
import 'package:google_sign_in/google_sign_in.dart';

part 'authorized_flow_event.dart';

part 'authorized_flow_state.dart';

part 'authorized_flow_bloc.freezed.dart';

class AuthorizedFlowBloc
    extends Bloc<AuthorizedFlowEvent, AuthorizedFlowState> {
  final GetCurrentUser _getCurrentUser = di.serviceLocator<GetCurrentUser>();
  final UpdateUserOptionalFlow _updateUser =
      di.serviceLocator<UpdateUserOptionalFlow>();

  AuthorizedFlowBloc() : super(const AuthorizedFlowState.initial()) {
    on<AuthorizedFlowEvent>(
      (event, emit) async {
        await event.when(
          fetchCurrentUser: () async {
            final result = await _getCurrentUser(NoParams());
            result.fold(
              (failure) {},
              (result) {},
            );
          },
          getCurrentUser: () async {
            emit(
              const AuthorizedFlowState.loading(),
            );
            final result = await _getCurrentUser(NoParams());
            result.fold(
              (failure) {},
              (result) {
                emit(
                  AuthorizedFlowState.gotCurrentUser(result),
                );
              },
            );
          },
          finishOptionalSetupFlow:
              (Uint8List? avatar, String? city, String? bio) async {
            final result = await _updateUser(
              ThreeParamsOptionalFlow(avatar, city, bio),
            );
            result.fold(
              (failure) {
                switch (failure.runtimeType) {
                  case UserNotFoundFailure:
                    emit(
                      const AuthorizedFlowState
                          .optionalSetupUserNotFoundFailure(),
                    );
                    break;
                  default:
                    emit(
                      const AuthorizedFlowState.optionalSetupFailure(),
                    );
                }
              },
              (result) {
                emit(
                  const AuthorizedFlowState.optionalSetupSuccess(),
                );
              },
            );
          },
          signOut: () async {
            await FacebookAuth.instance.logOut();
            if (GoogleSignIn().currentUser != null) {
              await GoogleSignIn().signOut();
            }
            try {
              await GoogleSignIn().disconnect();
            } finally {
              emit(const AuthorizedFlowState.signedOut());
            }
          },
        );
      },
    );
  }
}
