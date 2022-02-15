import 'package:intl/intl.dart';

class Helpers {
  static String formatDate(int? date) {
    String outputDate =
        DateFormat.yMMMEd().format(DateTime.parse(date.toString()));
    return outputDate;
  }

  static String hideEmail(String email) {
    const hiderPlaceholder = "*****";
    final censuredEmail =
        email.replaceRange(2, email.indexOf("@") - 2, hiderPlaceholder);
    return censuredEmail;
  }
}
