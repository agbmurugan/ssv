import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/helper_functions.dart';
import 'package:sreeselvavinayagartemple/src/mvc/data/model/pooja_time/timing.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/custom_image.dart';

class PoojaTimeCard extends StatelessWidget {
  const PoojaTimeCard({super.key, required this.data});

  final Timing? data;

  @override
  Widget build(BuildContext context) {
    var isDark = HelperFunctions.isDarkMode(context);

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: (AppSizes.screenWidth - 126) / 2,
              child: Text(data?.name ?? "",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : Colors.black)),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: (AppSizes.screenWidth - 126) / 2,
              child: Text(data?.time ?? "",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : Colors.black)),
            ),
            const SizedBox(width: 8),
            CustomImage(width: 70, height: 70, image: data?.image ?? "")
          ],
        ),
      ),
    );
  }
}
