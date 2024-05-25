
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/firebase_ref.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/firebase/firebase_helper.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/app_config/config.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/repo_helper.dart';

class CommonRepo extends GetxService with RepoHelper<Config> {
  final FirebaseHelper firebaseHelper;

  CommonRepo({
    required this.firebaseHelper,
  });

  Future<List<Config>> getConfigData() async {
    try {
      return await makeListRequest(
          await firebaseHelper.getData(FirebaseRef.appConfig), Config.fromJson);
    } catch (e) {
      return [];
    }
  }
}
