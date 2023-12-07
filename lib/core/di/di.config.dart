// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/home_screen/data/datasources/news_base_remote.dart' as _i7;
import '../../app/home_screen/data/datasources/news_remote_implementation.dart'
    as _i8;
import '../../app/home_screen/data/repositories/news_repo.dart' as _i10;
import '../../app/home_screen/domain/repositories/news_base_repo.dart' as _i9;
import '../../app/home_screen/domain/usecases/news_use_case.dart' as _i11;
import '../api/api_consumer.dart' as _i5;
import '../api/api_interceptor.dart' as _i3;
import '../api/dio_consumer.dart' as _i6;
import 'rigester_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AppInterceptors>(() => _i3.AppInterceptors());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.ApiConsumer>(
        () => _i6.DioConsumer(client: gh<_i4.Dio>()));
    gh.lazySingleton<_i7.NewsBaseRemote>(
        () => _i8.NewsRemoteImplementation(client: gh<_i5.ApiConsumer>()));
    gh.lazySingleton<_i9.NewsBaseRepo>(
        () => _i10.NewsRepo(newsBaseRemote: gh<_i7.NewsBaseRemote>()));
    gh.lazySingleton<_i11.NewsUseCase>(
        () => _i11.NewsUseCase(newsBaseRepo: gh<_i9.NewsBaseRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
