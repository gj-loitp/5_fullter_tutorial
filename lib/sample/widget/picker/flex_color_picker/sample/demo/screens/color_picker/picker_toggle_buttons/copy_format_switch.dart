import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pods/pods.dart';
import '../../../widgets/maybe_tooltip.dart';

class CopyFormatSwitch extends ConsumerWidget {
  const CopyFormatSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorPickerCopyFormat copyFormat = ref.watch(copyFormatPod);
    final List<bool> isSelected = <bool>[
      copyFormat == ColorPickerCopyFormat.dartCode,
      copyFormat == ColorPickerCopyFormat.hexRRGGBB,
      copyFormat == ColorPickerCopyFormat.hexAARRGGBB,
      copyFormat == ColorPickerCopyFormat.numHexRRGGBB,
      copyFormat == ColorPickerCopyFormat.numHexAARRGGBB,
    ];
    return MaybeTooltip(
      condition: ref.watch(enableTooltipsPod),
      tooltip: 'ColorPicker(copyPasteBehavior:\n'
          '  ColorPickerCopyPasteBehavior(copyFormat:\n'
          '    $copyFormat))',
      child: ListTile(
        title: const Text('Copy format'),
        trailing: ToggleButtons(
          isSelected: isSelected,
          onPressed: (int newIndex) {
            ref.read(copyFormatPod.notifier).state =
                ColorPickerCopyFormat.values[newIndex];
          },
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text('0xARGB'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Text('RGB'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Text('ARGB'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Text('#RGB'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text('#ARGB'),
            ),
          ],
        ),
      ),
    );
  }
}
