import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pods/pods.dart';
import '../../../widgets/maybe_tooltip.dart';

@immutable
class OpacityTrackHeightSlider extends ConsumerWidget {
  const OpacityTrackHeightSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaybeTooltip(
      condition: ref.watch(enableTooltipsPod),
      tooltip: 'ColorPicker(opacityTrackHeight: '
          '${ref.read(opacityTrackHeightPod).floor()})',
      child: ListTile(
        title: const Text('Opacity slider height'),
        subtitle: Slider(
          min: 10,
          max: 50,
          divisions: 50 - 10,
          label: ref.watch(opacityTrackHeightPod).floor().toString(),
          value: ref.watch(opacityTrackHeightPod.notifier).state,
          onChanged: (double value) =>
              ref.read(opacityTrackHeightPod.notifier).state = value,
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
                ref.read(opacityTrackHeightPod).floor().toString(),
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
