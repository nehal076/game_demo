import 'package:flutter/material.dart';

enum ButtonType {
  solid,
  line_art,
}

class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final bool? enabled;
  final Widget? child;
  final double? borderRadius;
  final double? width;
  final EdgeInsets? margin;
  final double? height;
  final ButtonType? type;
  final Color? color;
  final Color? textColor;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.enabled = true,
    this.child,
    this.borderRadius,
    this.width,
    this.margin,
    this.height,
    this.type = ButtonType.solid,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var enabledStyle = ElevatedButton.styleFrom(
      primary: color ?? const Color(0xfffecc58),
      onPrimary: textColor ?? const Color(0xff270132),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 35),
      ),
    );
    var disabledStyle = ElevatedButton.styleFrom(
      primary: color ?? const Color(0xfffecc58),
      onPrimary: textColor ?? Colors.white,
      shadowColor: Colors.transparent,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 35),
      ),
    );
    var lineArtStyle = ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: const Color(0xff270132), // textColor
      shadowColor: Colors.transparent,
      elevation: 10,
      onSurface: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 35),
      ),
      side: const BorderSide(width: 1, color: Color(0xff270132)),
    );
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(vertical: 18),
      child: ElevatedButton(
        onPressed: onPressed,
        style: type == ButtonType.solid
            ? (enabled == true ? enabledStyle : disabledStyle)
            : lineArtStyle,
        child: text != null
            ? FittedBox(
                fit: BoxFit.fitHeight,
                child: Center(
                  child: Text(
                    text!,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: (type == ButtonType.line_art)
                          ? const Color(0xff270132)
                          : null,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : child,
      ),
    );
  }
}
