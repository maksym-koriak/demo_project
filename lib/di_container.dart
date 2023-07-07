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
