import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart' as op;
import 'package:get/get.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/dio_client.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/dio_exception.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/error_config.dart';


class ApiClient extends GetxService {
  final DioClient dioClient;

  ApiClient({required this.dioClient});

  Future getData(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      var response =
          await dioClient.dio.get(path, queryParameters: queryParameters);
      return getResponse(body: response.data);
    } catch (e) {
      return handleException(e);
    }
  }

  Future postData(String path, dynamic body,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await dioClient.dio.post(
        path,
        data: body,
      );
      return getResponse(body: response.data);
    } catch (e) {
      return handleException(e);
    }
  }

  Future updateData(String path, dynamic body,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await dioClient.dio.patch(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return getResponse(body: response.data);
    } catch (e) {
      return handleException(e);
    }
  }

  Response handleException(dioException) {
    String errorCode = DioExceptions.fromDioError(dioException).toString();
    Map body = {
      "success": false,
      "data": null,
      "message": ErrorConfig.errorMessageMap[errorCode]
    };
    return getResponse(code: errorCode, body: jsonDecode(jsonEncode(body)));
  }

  getResponse({
    dynamic body,
    String? code,
  }) {
    return Response(
      body: body,
      statusText: code ?? ErrorConfig.C008,
    );
  }
}
  

// Future<void> refreshToken() async {
//     var response = await dioClient.dio.post("",
//         options: Options(headers: {"Refresh-Token": "refresh-token"}));
//     // on success response, deserialize the response
//     if (response.statusCode == 200) {
//       // LoginRequestResponse requestResponse =
//       //    LoginRequestResponse.fromJson(response.data);
//       // UPDATE the STORAGE with new access and refresh-tokens
//     } else {}
//   }

  // Future<Response<dynamic>> retry(RequestOptions requestOptions) async {
  //   // Create a new `RequestOptions` object with the same method, path, data, and query parameters as the original request.
  //   final options = Options(
  //     method: requestOptions.method,
  //     headers: {
  //       "Authorization": "Bearer ${"token"}",
  //     },
  //   );

  //   // Retry the request with the new `RequestOptions` object.
  //   return dioClient.dio.request<dynamic>(requestOptions.path,
  //       data: requestOptions.data,
  //       queryParameters: requestOptions.queryParameters,
  //       options: options);
  // }
  // if (err.response?.statusCode == 401) {
  //     // Refresh the user's authentication token.
  //     await refreshToken();
  //     // Retry the request.
  //     try {
  //       handler.resolve(await retry(err.requestOptions));
  //     } on DioException catch (e) {
  //       // If the request fails again, pass the error to the next interceptor in the chain.
  //       handler.next(e);
  //     }
  //     // Return to prevent the next interceptor in the chain from being executed.
  //     return;
  //   }

