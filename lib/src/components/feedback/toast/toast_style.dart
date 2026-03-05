/// VelocityUI Toast样式
library velocity_toast_style;

import 'package:flutter/material.dart';
import '../../../core/theme/velocity_colors.dart';
import '../../../core/tokens/velocity_spacing.dart';
import '../../../core/tokens/velocity_radius.dart';

class VelocityToastStyle {
  const VelocityToastStyle(
      {this.backgroundColor,
      this.textStyle,
      this.padding,
      this.borderRadius,
      this.boxShadow,
      this.icon,
      this.iconSize,
      this.iconColor,
      this.iconSpacing});

  factory VelocityToastStyle.fromType(dynamic type) {
    final typeName = type.toString().split('.').last;
    IconData icon;
    Color color;
    switch (typeName) {
      case 'success':
        icon = Icons.check_circle;
        color = VelocityColors.success;
        break;
      case 'warning':
        icon = Icons.warning;
        color = VelocityColors.warning;
        break;
      case 'error':
        icon = Icons.error;
        color = VelocityColors.error;
        break;
      default:
        icon = Icons.info;
        color = VelocityColors.info;
    }
    return VelocityToastStyle(
      backgroundColor: VelocityColors.gray900,
      textStyle: const TextStyle(fontSize: 14, color: VelocityColors.white),
      padding: const EdgeInsets.symmetric(
        horizontal: VelocitySpacing.md, 
        vertical: VelocitySpacing.md - 4, // 12px
      ),
      borderRadius: const BorderRadius.all(Radius.circular(VelocityRadius.md)),
      boxShadow: [
        BoxShadow(
            color: VelocityColors.withOpacity(VelocityColors.black, 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4))
      ],
      icon: icon,
      iconSize: 20,
      iconColor: color,
      iconSpacing: VelocitySpacing.sm,
    );
  }
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final double? iconSpacing;
}
