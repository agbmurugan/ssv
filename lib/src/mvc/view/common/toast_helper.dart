import 'package:fluttertoast/fluttertoast.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';

class ToastHelper {
  static showToast({required String message, bool isError = false}) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isError ? AppColors.error : AppColors.softGrey,
        textColor: isError ? AppColors.softGrey : AppColors.black,
        fontSize: 14.0);
  }
}
