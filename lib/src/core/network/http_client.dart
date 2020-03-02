import 'dart:io';
import 'package:wan_bi_sika/src/core/network/token_manager.dart';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

abstract class AppHTTPClient {
  AppHTTPClient(String baseURL);
  String baseURL;
  Future<Response> get(String url);
  Future<Response> post(
    String endpoint, {
    @required dynamic body,
  });
  Future<Response> put(String endpoint, {@required dynamic body});
  Future<Response> upload(String endpoint, {@required List<File> file, @required dynamic body});
}

class AppHTTPClientImpl implements AppHTTPClient {
  TokenManager _tokenManager;
  Dio _client;
  final String _baseURL;
  AppHTTPClientImpl(
    String baseURL, {
    Dio client,
    TokenManager tokenManager,
  })  : _client = client,
        _baseURL = baseURL,
        _tokenManager = tokenManager {
    _setupLoggingInterceptor();
  }

  String baseURL;
  Future<Response> get(String url, {Function(int, int) onReceiveProgress}) async {
    return _client.get('$url', onReceiveProgress: onReceiveProgress);
  }

  Future<Response> post(String endpoint, {@required dynamic body}) async {
    return _client.post(
      baseURL + endpoint,
      data: body,
      options: Options(),
    );
  }

  Future<Response> put(String endpoint, {@required dynamic body}) async {
    return _client.put(
      baseURL + endpoint,
      data: body,
      options: Options(),
    );
  }

  Future<Response> upload(String endpoint, {@required List<File> file, @required dynamic body}) async {
    FormData formdata = FormData()..fields.add(MapEntry("query", body));
    formdata.files.addAll(
      List.generate(
        file.length,
        (index) => MapEntry(
            "media",
            MultipartFile.fromFileSync(
              file[index].path,
            )),
      ),
    );

    return _client.post<dynamic>(baseURL + endpoint, data: formdata, onSendProgress: (received, total) {
      if (total != -1) {
        print((received / total * 100).toStringAsFixed(0) + "%");
      }
    });
  }

  void _setupLoggingInterceptor() async {
    _client.interceptors.add(InterceptorsWrapper(onRequest: (Options options) async {
      // final token = _tokenManager.token ?? await _tokenManager.getToken() ?? '';
      // options.headers[" bearer"] = token;
      return options; //continue
    }));
  }
}
