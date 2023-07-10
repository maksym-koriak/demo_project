import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:flutter_interngram_delta/core/data/networking/authorized_dio/authorized_dio.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/recovery_update_password.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/recovery_validate_email.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/recovery_validate_phone.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/update_user_optional_flow.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/datasource_impls/user_datasource_impl.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/networking/user_api.dart';
import 'package:flutter_interngram_delta/features/user/data/datasources/user_datasource.dart';
import 'package:flutter_interngram_delta/features/user/data/repository_impls/user_repository_impl.dart';
import 'package:flutter_interngram_delta/features/user/domain/repositories/user_repository.dart';
import 'package:flutter_interngram_delta/features/user/domain/use_cases/get_current_user.dart';
import 'package:flutter_interngram_delta/features/user/domain/use_cases/update_current_user.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_interngram_delta/features/auth/domain/services/timer_service.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/sign_up_user.dart';
import 'package:flutter_interngram_delta/core/data/networking/networking_constants.dart';
import 'package:flutter_interngram_delta/features/auth/data/datasources/auth_datasource.dart';
import 'package:flutter_interngram_delta/features/auth/data/datasources/datasource_impls/api_auth_datasource.dart';
import 'package:flutter_interngram_delta/features/auth/data/datasources/networking/auth_api.dart';
import 'package:flutter_interngram_delta/features/auth/data/repository_impls/auth_repository_impl.dart';
import 'package:flutter_interngram_delta/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/attempt_access.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/validate_email.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/request_verification_code.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/validate_nickname.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/validate_phone.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/validate_verification_code.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/sign_in_facebook.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/sign_in_google.dart';
import 'package:flutter_interngram_delta/features/auth/domain/use_cases/sign_in_user.dart';
import 'package:flutter_interngram_delta/features/auth/presentation/screens/verification_code_screen/bloc/verification_code_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final serviceLocator = GetIt.instance;

void init() {
  serviceLocator.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: NetworkingConstants.baseAuthUrl,
      ),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => AuthorizedDio(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthApi>(
    () => AuthApiImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<UserApi>(
    () => UserApiImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => TimerService(),
  );

  serviceLocator.registerLazySingleton(
    () => VerificationCodeBloc(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => AttemptAccess(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignInFacebook(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignInGoogle(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidatePhone(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryValidateEmail(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryValidatePhone(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RecoveryUpdatePassword(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => UpdateUserOptionalFlow(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => GetCurrentUser(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => UpdateCurrentUser(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateEmail(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateNickname(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => RequestVerificationCode(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => ValidateVerificationCode(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => SignUpUser(
      serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SignInUser(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthDatasource>(
    () => ApiAuthDatasourceImpl(
      serviceLocator(),
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<UserDatasource>(
    () => UserDatasourceImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerSingletonAsync<List<CameraDescription>>(() async {
    return await availableCameras();
  });

  serviceLocator.registerLazySingleton(
    () => const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    ),
  );
}
