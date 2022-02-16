import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/lib/util/url_launcher_utils.dart';

import 'bloc/clients_bloc.dart';
import 'model/client_model.dart';

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
        "SQLiteDemoScreen",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
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
        child: Icon(Icons.add),
        onPressed: () async {
          Client randomClient =
              testClients[math.Random().nextInt(testClients.length)];
          clientsBloc.add(randomClient);
        },
      ),
    );
  }
}
