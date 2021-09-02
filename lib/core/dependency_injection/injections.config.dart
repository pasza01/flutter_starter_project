// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_starter_project/core/app/changenotifier/app_state.dart'
    as _i8;
import 'package:flutter_starter_project/core/dependency_injection/register_module.dart'
    as _i9;
import 'package:flutter_starter_project/feature/profile/bloc/profile_bloc.dart'
    as _i6;
import 'package:flutter_starter_project/feature/profile/repo/profile_repo.dart'
    as _i3;
import 'package:flutter_starter_project/feature/weather/bloc/weather_bloc.dart'
    as _i7;
import 'package:flutter_starter_project/feature/weather/repo/weather_repo.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ProfileRepo>(() => _i3.ProfileRepo());
  await gh.factoryAsync<_i4.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i5.WeatherRepo>(() => _i5.WeatherRepo());
  gh.factory<_i6.ProfileBloc>(
      () => _i6.ProfileBloc(repo: get<_i3.ProfileRepo>()));
  gh.factory<_i7.WeatherBloc>(
      () => _i7.WeatherBloc(repo: get<_i5.WeatherRepo>()));
  gh.singleton<_i8.AppState>(_i8.AppState());
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
