import 'dart:async';
import 'dart:math';

import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_text/pdf_text.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class PdfTextScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PdfTextScreenState();
  }
}

class _PdfTextScreenState extends BaseStatefulState<PdfTextScreen> {
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
        "pdf_text",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/pdf_text");
        },
      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PDFDoc? _pdfDoc;
  String _text = "";

  bool _buttonsEnabled = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('PDF Text Example'),
      // ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              TextButton(
                child: Text(
                  "Pick PDF document",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blueAccent),
                onPressed: _pickPDFText,
              ),
              TextButton(
                child: Text(
                  "Read random page",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blueAccent),
                onPressed: _buttonsEnabled ? _readRandomPage : () {},
              ),
              TextButton(
                child: Text(
                  "Read whole document",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(5),
                    backgroundColor: Colors.blueAccent),
                onPressed: _buttonsEnabled ? _readWholeDoc : () {},
              ),
              Padding(
                child: Text(
                  _pdfDoc == null
                      ? "Pick a new PDF document and wait for it to load..."
                      : "PDF document loaded, ${_pdfDoc!.length} pages\n",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(15),
              ),
              Padding(
                child: Text(
                  _text == "" ? "" : "Text:",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(15),
              ),
              Text(_text),
            ],
          ),
        ),
    );
  }

  /// Picks a new PDF document from the device
  Future _pickPDFText() async {
    var filePickerResult = await FilePicker.platform.pickFiles();
    if (filePickerResult != null) {
      _pdfDoc = await PDFDoc.fromPath(filePickerResult.files.single.path!);
      setState(() {});
    }
  }

  /// Reads a random page of the document
  Future _readRandomPage() async {
    if (_pdfDoc == null) {
      return;
    }
    setState(() {
      _buttonsEnabled = false;
    });

    String text =
        await _pdfDoc!.pageAt(Random().nextInt(_pdfDoc!.length) + 1).text;

    setState(() {
      _text = text;
      _buttonsEnabled = true;
    });
  }

  /// Reads the whole document
  Future _readWholeDoc() async {
    if (_pdfDoc == null) {
      return;
    }
    setState(() {
      _buttonsEnabled = false;
    });

    String text = await _pdfDoc!.text;

    setState(() {
      _text = text;
      _buttonsEnabled = true;
    });
  }
}
