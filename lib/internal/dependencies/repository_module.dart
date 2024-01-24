import 'package:hotels_picker/data/repository/api_data_repository.dart';
import 'package:hotels_picker/domain/repository/api_repository.dart';
import 'package:hotels_picker/internal/dependencies/api_module.dart';

class RepositoryModule {
  static ApiRepository? _repositoryModule;

  static ApiRepository apiRepository() {
    _repositoryModule ??= ApiDataRepository(ApiModule.api());
    return _repositoryModule!;
  }
}
