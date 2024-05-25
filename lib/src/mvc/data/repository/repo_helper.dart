import 'package:get/get_connect/http/src/response/response.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/app_extension.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/common/response_model.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/network/error_config.dart';

abstract mixin class RepoHelper<T> {
  Future<List<T>> makeListRequest(
      response, T Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<T> items = List<T>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }

  Future<T> makeGetAPIObjectRequest(Response response, getJsonCallback) async {
    final T item = getJsonCallback(response.body);
    return item;
  }

  Future<ResponseModel> tranferData(Response response, getJsonCallback) async {
    dynamic data;
    try {
      data = await makeGetAPIObjectRequest(response, ResponseModel.fromJson);
      final dynamic item = getJsonCallback(data.data);
      return ResponseModel(
          data: item, success: item.status, message: item.error_msg);
    } catch (e) {
      return ResponseModel(
          success: data.success ?? false,
          message: data.message ?? ErrorConfig.unknownError);
    }
  }

  //  Future<ResponseModel> tranferData(ResponseModel response,
  //     getJsonCallback) async {
  //   final dynamic item = getJsonCallback(response.data);
  //   try {
  //     return ResponseModel(
  //         data: item, success: item?.status, message: item.error_msg);
  //   } catch (e) {
  //     return ResponseModel(success: false, message: e.toString());
  //   }
  // }
}

abstract mixin class RepoHelperTwo<T, U> {
  Future<List<T>> makeListRequest(
      response, T Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<T> items = List<T>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }

  Future<List<U>> makeListRequestTwo(
      response, U Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<U> items = List<U>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }

  Future<T> makeGetAPIObjectRequest(Response response,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final T item = getJsonCallback(response.body);
    return item;
  }

  // Future<ResponseModel> tranferData(ResponseModel response,
  //     T Function(Map<String, dynamic> json) getJsonCallback) async {
  //   final dynamic item = getJsonCallback(response.data);
  //   try {
  //     return ResponseModel(
  //         data: item, success: item?.status, message: item.error_msg);
  //   } catch (e) {
  //     return ResponseModel(success: false, message: e.toString());
  //   }
  // }
}

abstract mixin class RepoHelperThree<T, U, V> {
  Future<List<T>> makeListRequest(
      response, T Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<T> items = List<T>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }

  Future<List<U>> makeListRequestTwo(
      response, U Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<U> items = List<U>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }

  Future<List<V>> makeListRequestThree(
      response, V Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final List<V> items = List<V>.from(
        response.docs.map((item) => getJsonCallback(item.data())),
      );
      return items;
    } catch (e) {
      return [];
    }
  }
}
