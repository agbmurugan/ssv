import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/helper/route_helper.dart';

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key, this.onclickCancel, this.title});
  final String? title;
  final VoidCallback? onclickCancel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          title ?? "",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              if (onclickCancel != null) {
                onclickCancel!();
              } else {
                RouteHelper.pop();
              }
            },
            icon: const Icon(Icons.close))
      ],
    );
  }
}
