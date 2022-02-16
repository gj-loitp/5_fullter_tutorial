import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class LoadLocalJsonScreen extends StatefulWidget {
  @override
  LoadLocalJsonScreenState createState() => LoadLocalJsonScreenState();
}

class LoadLocalJsonScreenState extends State<LoadLocalJsonScreen> {
  List? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UIUtils.getAppBar(
          "Load local JSON file",
          () {
            Get.back();
          },
          null,
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('data_repo/starwars_data.json'),
                builder: (context, snapshot) {
                  var newData = json.decode(snapshot.data.toString());
                  print("newData " + newData.toString());

                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.all(DimenConstants.marginPaddingMedium),
                        child: Card(
                          elevation: DimenConstants.elevationSmall,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                DimenConstants.radiusMedium),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(
                                DimenConstants.marginPaddingMedium),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text("Name: " + newData[index]['name']),
                                Text("Height: " + newData[index]['height']),
                                Text("Mass: " + newData[index]['mass']),
                                Text("Hair Color: " +
                                    newData[index]['hair_color']),
                                Text("Skin Color: " +
                                    newData[index]['skin_color']),
                                Text("Eye Color: " +
                                    newData[index]['eye_color']),
                                Text("Birth Year: " +
                                    newData[index]['birth_year']),
                                Text("Gender: " + newData[index]['gender'])
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: newData == null ? 0 : newData.length,
                  );
                }),
          ),
        ));
  }
}
