import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/widget/flutter_file_view/page_file_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_view/flutter_file_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class FlutterFileViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterFileViewScreenState();
  }
}

class _FlutterFileViewScreenState
    extends BaseStatefulState<FlutterFileViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "flutter_file_view",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://github.com/tplloi/flutter_file_view");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterFileView.init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FileViewLocalizationsDelegate.delegate,
      ],
      supportedLocales: <Locale>[
        Locale('en', 'US'),
        // Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    );
  }
}

// ignore: public_member_api_docs
class HomePage extends StatefulWidget {
  // ignore: public_member_api_docs
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> files = <String>[
    'FileTest.docx',
    'FileTest.doc',
    'FileTest.xlsx',
    'FileTest.xls',
    'FileTest.pptx',
    'FileTest.ppt',
    'FileTest.pdf',
    'FileTest.txt',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('File View')),
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return ListView.builder(
      itemCount: files.length,
      itemBuilder: (BuildContext context, int index) {
        final String filePath = files[index];
        String fileShowText = '';

        final int i = filePath.lastIndexOf('/');
        if (i <= -1) {
          fileShowText = filePath;
        } else {
          fileShowText = filePath.substring(i + 1);
        }

        final Widget child = ElevatedButton(
          onPressed: () {
            FileViewController? controller;

            if (filePath.contains('http://') || filePath.contains('https://')) {
              controller = FileViewController.network(filePath);
            } else {
              controller = FileViewController.asset('assets/files/$filePath');
            }

            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => FileViewPage(controller: controller!),
              ),
            );
          },
          child: Text(fileShowText),
        );

        return Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: child,
        );
      },
    );
  }
}
