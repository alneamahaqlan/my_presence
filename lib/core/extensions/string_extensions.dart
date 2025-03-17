
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


extension StringExtension on String {

  String trans(BuildContext context, {Map<String, String>? namedArgs}) {
    // Get the translated text
    String translatedText = this.tr(context: context, namedArgs: namedArgs);

    // Remove any placeholder (e.g., {key}) that is not present in namedArgs
    return translatedText.replaceAllMapped(RegExp(r'\{(\w+)\}'), (match) {
      String key = match.group(1)!;
      return namedArgs?.containsKey(key) == true ? match.group(0)! : "";
    });
  }
 

}


