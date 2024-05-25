import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/firebase_ref.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/helper_functions.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time_response.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/repository/pooja_time_repo/pooja_time_repo.dart';

class PoojaTimeController extends GetxController {
  final PoojaTimeRepo repo;

  PoojaTimeController({
    required this.repo,
  });

  Rx<PoojaTimeResponse> data = const PoojaTimeResponse().obs;
  RxBool isLoading = true.obs;
  RxInt currLang = 2.obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  updateCurrLang(index) {
    final myLocale = Get.locale;
    if (myLocale?.languageCode == "ms") {
      currLang.value = 2;
    } else {
      currLang.value = 1;
    }
    // currLang.value = index;
    // update();
  }

  initData() async {
    updateCurrLang(1);
    await getData();
    isLoading.value = false;
  }

  getData() async {
    data.value = await repo.getData();
  }

  Future addTimigs(image, name, order, time) async {
    isLoading.value = true;
    var randid = HelperFunctions.generateRandomId();
    var id = randid.toUpperCase();
    final fireStore = FirebaseFirestore.instance;
    var batch = fireStore.batch();
    final ref = fireStore.collection(FirebaseRef.timingTA);

    batch.set(ref.doc(id), {
      "id": id,
      "name": name,
      "image": image,
      "order": int.parse(order),
      "status": "active",
      "time": time,
    });
    await batch.commit();
    isLoading.value = false;
  }
}
