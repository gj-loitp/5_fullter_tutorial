import 'dart:math' as math;

import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bloc/clients_bloc.dart';
import 'model/client_model.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
//https://medium.com/flutter-community/using-sqlite-in-flutter-187c1a82e8b
class SQLiteDemoScreen extends StatefulWidget {
  @override
  _SQLiteDemoScreenState createState() => _SQLiteDemoScreenState();
}

class _SQLiteDemoScreenState extends State<SQLiteDemoScreen> {
  // data for testing
  List<Client> testClients = [
    Client(firstName: "BMW", lastName: "S1000RR", blocked: false),
    Client(firstName: "Suzuki", lastName: "GSX1000R", blocked: true),
    Client(firstName: "Yamaha", lastName: "R1M", blocked: false),
    Client(firstName: "Honda", lastName: "CBR1000RR", blocked: true),
    Client(firstName: "Kawasaki", lastName: "H2R", blocked: true),
  ];

  final clientsBloc = ClientsBloc();

  @override
  void dispose() {
    clientsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "sqflite",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/sqflite");
        },
      ),
      body: StreamBuilder<List<Client>>(
        stream: clientsBloc.clientStream,
        builder: (BuildContext context, AsyncSnapshot<List<Client>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                Client item = snapshot.data![index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.red),
                  onDismissed: (direction) {
                    clientsBloc.delete(item.id);
                  },
                  child: ListTile(
                    title: Text(item.lastName!),
                    leading: Text(item.id.toString()),
                    trailing: Checkbox(
                      onChanged: (bool? value) {
                        clientsBloc.blockUnblock(item);
                      },
                      checkColor: Colors.white,
                      value: item.blocked,
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrange,
        onPressed: () async {
          Client randomClient =
              testClients[math.Random().nextInt(testClients.length)];
          clientsBloc.add(randomClient);
        },
      ),
    );
  }
}
