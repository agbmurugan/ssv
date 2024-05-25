import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/custom_image.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final String backgroundImage;
 
  const CustomCard(
      {super.key,
      required this.child,
      required this.backgroundImage,
     });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: Colors.transparent,
          elevation: 5.0,
          shadowColor: const Color(0x3F000000),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: CustomImage(
                    image: backgroundImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              child
            ],
          )),
    );
  }
}
