import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */

import 'package:csslib/parser.dart' as css;
import 'package:csslib/visitor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const _default = css.PreprocessorOptions(
    useColors: false,
    checked: true,
    warningsAsErrors: true,
    inputFile: 'memory');

/// Spin-up CSS parser in checked mode to detect any problematic CSS.  Normally,
/// CSS will allow any property/value pairs regardless of validity; all of our
/// tests (by default) will ensure that the CSS is really valid.
StyleSheet parseCss(String cssInput,
    {List<css.Message>? errors, css.PreprocessorOptions? opts}) {
  return css.parse(cssInput, errors: errors, options: opts ?? _default);
}

/// Pretty printer for CSS.
String prettyPrint(StyleSheet ss) =>
    (CssPrinter()..visitTree(ss, pretty: true)).toString();

class CsslibScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CsslibScreenState();
  }
}

class _CsslibScreenState extends BaseStatefulState<CsslibScreen> {
  @override
  void initState() {
    super.initState();

    testParse();
  }

  void testParse() {
    var errors = <css.Message>[];

    // Parse a simple stylesheet.
    print('1. Good CSS, parsed CSS emitted:');
    print('   =============================');
    var stylesheet = parseCss(
        '@import "support/at-charset-019.css"; div { color: red; }'
        'button[type] { background-color: red; }'
        '.foo { '
        'color: red; left: 20px; top: 20px; width: 100px; height:200px'
        '}'
        '#div {'
        'color : #00F578; border-color: #878787;'
        '}',
        errors: errors);

    if (errors.isNotEmpty) {
      print('Got ${errors.length} errors.\n');
      for (var error in errors) {
        print(error);
      }
    } else {
      print(prettyPrint(stylesheet));
    }

    // Parse a stylesheet with errors
    print('2. Catch severe syntax errors:');
    print('   ===========================');
    var stylesheetError = parseCss(
        '.foo #%^&*asdf{ '
        'color: red; left: 20px; top: 20px; width: 100px; height:200px'
        '}',
        errors: errors);

    if (errors.isNotEmpty) {
      print('Got ${errors.length} errors.\n');
      for (var error in errors) {
        print(error);
      }
    } else {
      print(stylesheetError.toString());
    }

    // Parse a stylesheet that warns (checks) problematic CSS.
    print('3. Detect CSS problem with checking on:');
    print('   ===================================');
    stylesheetError = parseCss('# div1 { color: red; }', errors: errors);

    if (errors.isNotEmpty) {
      print('Detected ${errors.length} problem in checked mode.\n');
      for (var error in errors) {
        print(error);
      }
    } else {
      print(stylesheetError.toString());
    }

    // Parse a CSS selector.
    print('4. Parse a selector only:');
    print('   ======================');
    var selectorAst = css.selector('#div .foo', errors: errors);
    if (errors.isNotEmpty) {
      print('Got ${errors.length} errors.\n');
      for (var error in errors) {
        print(error);
      }
    } else {
      print(prettyPrint(selectorAst));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "csslib",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/csslib");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }
}
