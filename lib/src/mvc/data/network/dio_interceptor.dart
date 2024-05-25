import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/app_extension.dart';

class DioInterceptor extends Interceptor {
  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      printTime: false,
    ),
  );



  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // options.headers = header;
    logger.i('====================START====================');
    logger.i('HTTP method => ${options.method} ');
    logger.i(
        'Request => ${options.baseUrl}${options.path}${options.queryParameters.format}');
    logger.i('Header  => ${options.headers}');
    logger.i('Request Body  => ${jsonEncode(options.data)}');
    logger.i('Request Parameter  => ${jsonEncode(options.queryParameters)}');

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final options = err.requestOptions;
    logger.e(options.method); // Debug log
    logger.e('Error: ${err.error}, Message: ${err.message}'); // Error log

    return super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('Response => StatusCode: ${response.statusCode}'); // Debug log
    logger.d('Response => Body: ${response.data}'); // Debug log
    // log("Response =>Data:${jsonEncode(response.data)}");
    return super.onResponse(response, handler);
  }
}
