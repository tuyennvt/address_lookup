// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:address_lookup/core/di/inject_third_module.dart' as _i587;
import 'package:address_lookup/core/services/auth_interceptor.dart' as _i167;
import 'package:address_lookup/core/services/dio_client.dart' as _i905;
import 'package:address_lookup/core/services/local_database_service.dart'
    as _i941;
import 'package:address_lookup/core/services/logger_interceptor.dart' as _i140;
import 'package:address_lookup/core/services/prefs.dart' as _i204;
import 'package:address_lookup/features/address/data/address_repository.dart'
    as _i725;
import 'package:address_lookup/features/main/cubit/main_cubit.dart' as _i67;
import 'package:address_lookup/features/search/cubit/search_cubit.dart'
    as _i819;
import 'package:address_lookup/features/splash/cubit/splash_cubit.dart'
    as _i717;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> initialize({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectThirdModule = _$InjectThirdModule();
    gh.factory<_i140.LoggerInterceptor>(() => _i140.LoggerInterceptor());
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => injectThirdModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i941.LocalDatabaseService>(
      () => _i941.LocalDatabaseService(),
    );
    gh.lazySingleton<_i67.MainCubit>(() => _i67.MainCubit());
    gh.factory<_i725.AddressRepository>(
      () => _i725.AddressRepository(gh<_i941.LocalDatabaseService>()),
    );
    gh.singleton<_i204.Prefs>(() => _i204.Prefs(gh<_i460.SharedPreferences>()));
    gh.singleton<_i717.SplashCubit>(
      () => _i717.SplashCubit(gh<_i725.AddressRepository>()),
    );
    gh.lazySingleton<_i819.SearchCubit>(
      () => _i819.SearchCubit(gh<_i725.AddressRepository>()),
    );
    gh.factory<_i167.AuthInterceptor>(
      () => _i167.AuthInterceptor(gh<_i204.Prefs>()),
    );
    gh.singleton<_i905.DioClient>(
      () => _i905.DioClient(
        gh<_i167.AuthInterceptor>(),
        gh<_i140.LoggerInterceptor>(),
      ),
    );
    return this;
  }
}

class _$InjectThirdModule extends _i587.InjectThirdModule {}
