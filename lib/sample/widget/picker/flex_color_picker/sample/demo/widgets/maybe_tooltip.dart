import 'package:flutter/material.dart';

/// Wrap the [child] with a [Tooltip] if [condition] is true and [tooltip] is
/// not null and [tooltip] is not empty, otherwise just return the [child].
class MaybeTooltip extends StatelessWidget {
  /// Const default constructor.
  const MaybeTooltip({
    super.key,
    required this.condition,
    this.tooltip,
    required this.child,
    this.padding,
    this.margin,
  });

  final bool condition;
  final String? tooltip;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (condition && tooltip != null && tooltip != '') {
      return Tooltip(
        message: tooltip,
        padding: padding,
        margin: margin,
        child: child,
      );
    } else {
      return child;
    }
  }
}
