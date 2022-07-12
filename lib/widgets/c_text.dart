import 'package:flutter/material.dart';

class CText extends StatefulWidget {
  final double? width;
  final double? height;
  final GestureTapCallback? tappedText;
  final String? text;
  final EdgeInsets? pin;
  final EdgeInsets? margin;
  final Color? textColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? backgrounColor;
  final TextDecoration? textDecoration;
  final String? fontFamily;
  final double? lineSpacing;
  final TextOverflow? textOverflow;
  final int? maxLine;

  const CText({
    Key? key,
    this.textOverflow,
    this.text,
    this.height,
    this.pin,
    this.margin,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.backgrounColor,
    this.textDecoration,
    this.tappedText,
    this.width,
    this.fontFamily,
    this.lineSpacing,
    this.fontStyle,
    this.maxLine,
  }) : super(key: key);

  @override
  _CTextState createState() => _CTextState();
}

class _CTextState extends State<CText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tappedText,
      child: Container(
        height: widget.height,
        width: widget.width,
        padding: widget.pin ?? const EdgeInsets.all(0),
        margin: widget.margin ?? const EdgeInsets.all(0),
        child: Text((widget.text ?? ''),
            textAlign: widget.textAlign ?? TextAlign.left,
            style: TextStyle(
              fontStyle: widget.fontStyle,
              //fontFamily: widget.fontFamily ?? FontsAsset.nunitoRegular,
              height: widget.lineSpacing ?? 1.2,
              decoration: widget.textDecoration ?? TextDecoration.none,
              backgroundColor: widget.backgrounColor ?? Colors.transparent,
              fontWeight: widget.fontWeight ?? FontWeight.normal,
              color: widget.textColor ?? Colors.black,
              fontSize: widget.fontSize ?? 15,
            ),
            overflow: widget.textOverflow,
            maxLines: widget.maxLine),
      ),
    );
  }
}
