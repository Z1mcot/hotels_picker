import 'package:dio/dio.dart';

import 'package:hotels_picker/data/api_clients/api_client.dart';
import 'package:hotels_picker/internal/config/app_config.dart';

class ApiModule {
  static String? _baseUrl;
  static ApiClient? _api;

  static ApiClient api() {
    _baseUrl ??= 'https://$baseUrl';
    _api ??= ApiClient(Dio(), baseUrl: _baseUrl);
    return _api!;
  }
}
