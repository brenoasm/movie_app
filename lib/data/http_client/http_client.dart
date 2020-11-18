import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app/data/http_client/http_client_interface.dart';

import 'package:movie_app/domain/exceptions/app_exceptions.dart';
import 'package:movie_app/environment/configuration/configuration.dart';

const timeout = Duration(seconds: 3);

// Got it from https://github.com/Rodrigolmti/flutter_clean_architecture/blob/master/lib/data/http_manager/app_http_manager.dart

@Singleton(as: IHttpClient)
class HttpClient implements IHttpClient {
  final Configuration _configuration;

  HttpClient(this._configuration);

  @override
  Future get({
    String url,
    Map<String, dynamic> query,
    Map<String, String> headers,
  }) async {
    try {
      print('Api Get request url $url');

      final response = await http
          .get(
            _queryBuilder(url, query),
            headers: _headerBuilder(headers),
          )
          .timeout(
            timeout,
            onTimeout: () => throw TimeoutException(),
          );

      return _returnResponse(response);
    } on Exception catch (_) {
      throw NetworkException();
    }
  }

  @override
  Future<dynamic> post({
    String url,
    Map body,
    Map<String, dynamic> query,
    Map<String, String> headers,
  }) async {
    try {
      print('Api Post request url $url, with $body');

      final response = await http
          .post(
            _queryBuilder(url, query),
            body: body != null ? jsonEncode(body) : null,
            headers: _headerBuilder(headers),
          )
          .timeout(
            timeout,
            onTimeout: () => throw TimeoutException(),
          );

      return _returnResponse(response);
    } on Exception catch (_) {
      throw NetworkException();
    }
  }

  @override
  Future<dynamic> put({
    String url,
    Map body,
    Map<String, dynamic> query,
    Map<String, String> headers,
  }) async {
    try {
      print('Api Put request url $url, with $body');

      final response = await http
          .put(
            _queryBuilder(url, query),
            body: jsonEncode(body),
            headers: _headerBuilder(headers),
          )
          .timeout(
            timeout,
            onTimeout: () => throw TimeoutException(),
          );

      return _returnResponse(response);
    } on Exception catch (_) {
      throw NetworkException();
    }
  }

  @override
  Future<dynamic> delete({
    String url,
    Map<String, dynamic> query,
    Map<String, String> headers,
  }) async {
    try {
      print('Api Delete request url $url');

      final response = await http
          .delete(
            _queryBuilder(url, query),
            headers: _headerBuilder(headers),
          )
          .timeout(
            timeout,
            onTimeout: () => throw TimeoutException(),
          );

      return _returnResponse(response);
    } on Exception catch (_) {
      throw NetworkException();
    }
  }

  Map<String, String> _headerBuilder(Map<String, String> headers) {
    final headers = <String, String>{};

    headers[HttpHeaders.acceptHeader] = 'application/json';
    headers[HttpHeaders.contentTypeHeader] = 'application/json';

    if (headers != null && headers.isNotEmpty) {
      headers.forEach((key, value) {
        headers[key] = value;
      });
    }
    return headers;
  }

  String _queryBuilder(String path, Map<String, dynamic> query) {
    final buffer = StringBuffer()..write(_configuration.apiBaseUrl + path);

    buffer.write('?api_key=${_configuration.apiKey}&');

    if (query != null) {
      query.forEach((key, value) {
        buffer.write('$key=$value&');
      });
    }

    return buffer.toString();
  }

  dynamic _returnResponse(http.Response response) {
    final responseJson = json.decode(response.body.toString());

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      print('Api response success with $responseJson');
      return responseJson;
    }

    print('Api response error with ${response.statusCode} + ${response.body}');

    switch (response.statusCode) {
      case 400:
        throw BadRequestException();
      case 401:
      case 403:
        throw UnauthorisedException();
      case 500:
      default:
        throw ServerException();
    }
  }
}
