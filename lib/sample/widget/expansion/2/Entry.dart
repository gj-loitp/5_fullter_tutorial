/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

const List<Entry> data = <Entry>[
  Entry(
    'ExpansionTile A',
    <Entry>[
      Entry(
        'Section a',
        <Entry>[
          Entry('Item A.a.1'),
          Entry('Item A.a.2'),
        ],
      ),
      Entry('Section aa'),
      Entry('Section aaa'),
    ],
  ),
  Entry(
    'ExpansionTile B',
    <Entry>[
      Entry('Section b'),
      Entry('Section bb'),
    ],
  ),
];
