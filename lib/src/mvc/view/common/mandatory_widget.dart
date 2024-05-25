import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_text_widget.dart';

class MandatoryWidget extends StatelessWidget {
  const MandatoryWidget({super.key, this.style});
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextView(
      text: " *",
      textStyle: style,
    );
  }
}
