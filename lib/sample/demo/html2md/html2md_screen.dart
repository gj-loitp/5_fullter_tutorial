import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UrlLauncherUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html2md/html2md.dart' as html2md;

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Html2MdScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Html2MdScreenState();
  }
}

class _Html2MdScreenState extends BaseStatefulState<Html2MdScreen> {
  String _text = "";

  @override
  void initState() {
    super.initState();
    _test();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "html2md",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInWebViewWithJavaScript(
              "https://pub.dev/packages/html2md");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [Text(_text)],
      ),
    );
  }

  void _test() {
    var html = '''<h1>HTML2MD Demo</h1>

<p>This demonstrates <a href="https://github.com/jarontai/html2md">html2md</a> – an HTML to Markdown converter in Dart.</p>

<h2>Usage</h2>

<pre><code class="language-dart">import 'package:html2md/html2md.dart' as html2md;
void main() {
  print(html2md.convert('&lt;h1&gt;Hello world&lt;/h1&gt;'));
}</code></pre>

<hr />

<p>It aims to be <a href="http://commonmark.org/">CommonMark</a> compliant, and includes options to style the output. These options include:</p>

<ul>
  <li>headingStyle (setext or atx)</li>
  <li>horizontalRule (*, -, or _)</li>
  <li>bullet (*, -, or +)</li>
  <li>codeBlockStyle (indented or fenced)</li>
  <li>fence (` or ~)</li>
  <li>emDelimiter (_ or *)</li>
  <li>strongDelimiter (** or __)</li>
  <li>linkStyle (inlined or referenced)</li>
  <li>linkReferenceStyle (full, collapsed, or shortcut)</li>
</ul>''';
    print(html2md.convert(html));

    setState(() {
      _text = html2md.convert(html);
    });
  }
}
