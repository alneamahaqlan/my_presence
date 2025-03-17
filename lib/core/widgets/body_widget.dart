import 'package:flutter/material.dart';
import '../extensions/string_extensions.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Map<String, String>? namedArgs;

  const TextWidget({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.namedArgs,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.trans(context, namedArgs: namedArgs),
      style: style ?? Theme.of(context).textTheme.bodyMedium,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
