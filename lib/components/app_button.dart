import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.padding,
      this.margin,
      this.onPressed,
      this.child,
      this.flex,
      this.mainAxisAlignment,
      this.color,
      this.hoverColor,
      this.disableTextColor,
      this.disableColor,
      this.borderColor,
      this.elevation,
      this.disableElevation,
      this.radius,
      this.borderWidth,
      this.height,
      this.width,
      this.borderStyle});

  final EdgeInsets? padding, margin;
  final Function()? onPressed;
  final Widget? child;
  final bool? flex;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? color, hoverColor, disableTextColor, disableColor, borderColor;
  final double? elevation, disableElevation, radius, borderWidth, height, width;
  final BorderStyle? borderStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            side: borderWidth == null
                ? BorderSide.none
                : BorderSide(
                    width: borderWidth ?? 0,
                    color: borderColor ?? Colors.black,
                    style: borderStyle ?? BorderStyle.solid),
            borderRadius: BorderRadius.circular(radius ?? 0)),
        color: color,
        elevation: elevation,
        minWidth: 0,
        height: height,
        hoverColor: hoverColor,
        disabledColor: disableColor,
        disabledTextColor: disableTextColor,
        disabledElevation: disableElevation,
        padding: padding ?? const EdgeInsets.all(0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: child,
      ),
    );
  }
}
