import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pods/pods.dart';
import '../../../widgets/maybe_tooltip.dart';

@immutable
class SpacingSlider extends ConsumerWidget {
  const SpacingSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaybeTooltip(
      condition: ref.watch(enableTooltipsPod),
      tooltip: 'ColorPicker(spacing: '
          '${ref.read(spacingPod).floor()})',
      child: ListTile(
        title: const Text('Color picker item spacing'),
        subtitle: Slider(
          max: 25,
          divisions: 25,
          label: ref.watch(spacingPod).floor().toString(),
          value: ref.watch(spacingPod),
          onChanged: (double value) =>
              ref.read(spacingPod.notifier).state = value,
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'dp',
                style: TextStyle(fontSize: 11),
              ),
              Text(
                ref.read(spacingPod).floor().toString(),
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
