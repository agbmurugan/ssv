import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final double radius;
  final BoxFit fit;
  final String placeholder;
  final bool isNetwork;
  const CustomImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.radius = 0,
    this.fit = BoxFit.cover,
    this.placeholder = 'assets/amman.png', 
    this.isNetwork=true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child:isNetwork? FadeInImage.assetNetwork(
          placeholder: placeholder,
          image: image,
          fit: fit,
          imageErrorBuilder: (context, error, stackTrace) => const SizedBox(),
        ):
        Image.asset(
          image,
          
          fit: fit,
        )
        ,
      ),
    );
  }
}
