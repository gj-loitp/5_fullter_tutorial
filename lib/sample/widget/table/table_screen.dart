import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class TableScreen extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UIUtils.getAppBar(
          "TableScreen",
          () {
            Get.back();
          },
          null,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          children: [
            Center(
              child: Text(
                'People-Chart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  _genDataColumn('Id'),
                  _genDataColumn('Name'),
                  _genDataColumn('Profession'),
                  _genDataColumn('Column1'),
                  _genDataColumn('Column2'),
                  _genDataColumn('Column3'),
                  _genDataColumn('Column4'),
                  _genDataColumn('Column5'),
                ],
                rows: [
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                  _genDataRow('1', 'Loi1', "Profession", "1", "2", "3", "4", "5"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataColumn _genDataColumn(String label) {
    return DataColumn(
      label: Text(
        label,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  DataRow _genDataRow(
    String id,
    String name,
    String profession,
    String c1,
    String c2,
    String c3,
    String c4,
    String c5,
  ) {
    return DataRow(cells: [
      DataCell(Text(id)),
      DataCell(Text(name)),
      DataCell(Text(profession)),
      DataCell(Text(c1)),
      DataCell(Text(c2)),
      DataCell(Text(c3)),
      DataCell(Text(c4)),
      DataCell(Text(c5)),
    ]);
  }
}
