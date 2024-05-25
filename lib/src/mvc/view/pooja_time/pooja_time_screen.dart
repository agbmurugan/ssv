import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/helper_functions.dart';
import 'package:sreeselvavinayagartemple/src/mvc/controller/pooja_time/pooja_time_controller.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/pooja_time_response.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/timing.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_response_widget.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/pooja_time/widgets/pooja_time_card.dart';
import 'package:sreeselvavinayagartemple/themes/font_height.dart';

class PoojaTimeScreen extends StatelessWidget {
  const PoojaTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PoojaTimeController(
      repo: Get.find(),
    ));
    return Scaffold(
      backgroundColor: const Color(0xFFFFEFC4),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Pooja Time'.tr),
        ),
        actions: [
          PopupMenuButton<int>(
            color: Colors.white,
            icon: const Icon(Icons.language,
                color: Color.fromARGB(255, 69, 67, 67)),
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: TextButton(
                      onPressed: () {
                        var locale = const Locale('en', 'US');
                        Get.updateLocale(locale);
                        controller.updateCurrLang(1);
                      },
                      child: const Text(
                        'தமிழ்',
                        style: hb3,
                      ))),
              PopupMenuItem(
                value: 2,
                child: TextButton(
                  onPressed: () {
                    var locale = const Locale('ms', 'MS');
                    Get.updateLocale(locale);
                    controller.updateCurrLang(2);
                  },
                  child: const Text(
                    'English',
                    style: hb3,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Obx(() => ResponseWidget(
            error: "",
            isLoading: controller.isLoading.value,
            child: buildBody(
                context, controller.data.value, controller.currLang.value),
          )),
    );
  }

  buildBody(context, PoojaTimeResponse? response, index) {
    var isDark = HelperFunctions.isDarkMode(context);

    PoojaTime? data = index == 2 ? response?.en : response?.ta;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: !isDark ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    hGap10,
                    Text(
                      'NOTES'.tr,
                      style: hr4,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data?.notes?.length ?? 0,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 12,
                      ),
                      itemBuilder: (context, index) => ListTile(
                        leading: const Icon(
                          Icons.brightness_1,
                          color: Colors.red,
                        ),
                        title: Text(
                          data?.notes?[index].value ?? "",
                          style: TextStyle(
                            fontSize: 14,
                            color: isDark ? Colors.white : Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data?.timing?.length ?? 0,
                itemBuilder: (context, index) {
                  return PoojaTimeCard(data: data?.timing?[index]);
                }),
          ],
        ),
      ),
    );
  }
}
