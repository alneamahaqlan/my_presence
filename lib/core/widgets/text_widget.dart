import 'package:flutter/material.dart';

import '../extensions/string_extensions.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Map<String, String>? namedArgs;
  final FontWeight fontWeight;
  final double? fontSize;
  final Color? color;

  const TextWidget({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.namedArgs,
    this.fontWeight = FontWeight.normal,
    this.fontSize, this.color

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.trans(context, namedArgs: namedArgs),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
      style: style ?? TextStyle(fontWeight: fontWeight,fontSize: fontSize,color: color),
    
    );
  }
}
