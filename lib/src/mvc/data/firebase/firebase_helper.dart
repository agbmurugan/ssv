import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class FirebaseHelper extends GetxService {
  FirebaseHelper();

  Future getData(path) async {
    try {
      final CollectionReference ref =
          FirebaseFirestore.instance.collection(path);
      var data = await ref.get();

      return data;
    } catch (e) {
      return e;
    }
  }

  Future getDataOrderBy(path, orderBy, {bool? isDescending}) async {
    try {
      final CollectionReference ref =
          FirebaseFirestore.instance.collection(path);
      return await ref
          .orderBy(orderBy, descending: isDescending ?? false)
          .get();
    } catch (e) {
      return e;
    }
  }
}
