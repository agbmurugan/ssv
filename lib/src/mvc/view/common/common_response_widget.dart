
import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_error_widget.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/custom_loader.dart';

class ResponseWidget extends StatelessWidget {
  const ResponseWidget(
      {super.key, required this.error, this.child, required this.isLoading});
  final bool isLoading;
  final String error;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CustomLoader()
        : error.isNotEmpty
            ? buildErrorWidget(error)
            : child ?? const SizedBox();
  }

  buildErrorWidget(error) {
    return Center(
      child: CommonErrorWidget(
        error: error,
      ),
    );
  }
}
