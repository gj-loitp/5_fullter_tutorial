import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pods/pods.dart';
import '../../../utils/theme.dart';
import '../../../widgets/maybe_tooltip.dart';

@immutable
class OnStartColorIndicator extends ConsumerWidget {
  const OnStartColorIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color background = ref.watch(onColorChangeStartPod);
    final bool isLight = Theme.of(context).brightness == Brightness.light;
    return MaybeTooltip(
      condition: ref.watch(enableTooltipsPod),
      tooltip: 'ColorPicker(onColorChangeStart: '
          '(Color ${background.hexAlpha}) { ... } )',
      child: Chip(
        label: Text('Start ${ref.watch(onColorChangeStartPod).hexAlpha}',
            style: TextStyle(
                color: AppTheme.getChipTextColor(background, isLight),
                fontSize: 12)),
        backgroundColor: background,
      ),
    );
  }
}
