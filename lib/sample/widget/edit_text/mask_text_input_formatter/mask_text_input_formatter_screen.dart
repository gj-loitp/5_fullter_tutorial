import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MaskTextInputFormatterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaskTextInputFormatterScreenState();
  }
}

class _MaskTextInputFormatterScreenState
    extends BaseStatefulState<MaskTextInputFormatterScreen> {
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
        "mask_text_input_formatter",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://github.com/tplloi/mask_text_input_formatter");
        },
      ),
      body: ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  ExamplePageState createState() => ExamplePageState();
}

class ExampleMask {
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;

  ExampleMask(
      {required this.formatter,
      this.validator,
      required this.hint,
      required this.textInputType});
}

class ExamplePageState extends State<ExamplePage> {
  final List<ExampleMask> examples = [
    ExampleMask(
        formatter: MaskTextInputFormatter(mask: "+# (###) ###-##-##"),
        hint: "+1 (234) 567-89-01",
        textInputType: TextInputType.phone),
    ExampleMask(
      formatter: MaskTextInputFormatter(
          mask: "+# (###) ###-##-##", type: MaskAutoCompletionType.eager),
      hint: "+1 (234) 567-89-01 (eager type)",
      textInputType: TextInputType.phone,
    ),
    ExampleMask(
        formatter: MaskTextInputFormatter(mask: "##/##/####"),
        hint: "31/12/2020",
        textInputType: TextInputType.phone,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return null;
          }
          final components = value.split("/");
          if (components.length == 3) {
            final day = int.tryParse(components[0]);
            final month = int.tryParse(components[1]);
            final year = int.tryParse(components[2]);
            if (day != null && month != null && year != null) {
              final date = DateTime(year, month, day);
              if (date.year == year && date.month == month && date.day == day) {
                return null;
              }
            }
          }
          return "wrong date";
        }),
    ExampleMask(
      formatter: MaskTextInputFormatter(mask: "(AA) ####-####"),
      hint: "(AB) 1234-5678",
      textInputType: TextInputType.text,
    ),
    ExampleMask(
      formatter: MaskTextInputFormatter(mask: "####.AAAAAA/####-####"),
      hint: "1234.ABCDEF/2019-2020",
      textInputType: TextInputType.text,
    ),
    ExampleMask(
      formatter: SpecialMaskTextInputFormatter(),
      hint: "A.1234 or B.123456",
      textInputType: TextInputType.text,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
            child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                children: examples.map(buildTextField).toList())));
  }

  Widget buildTextField(ExampleMask example) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          TextFormField(
              controller: example.textController,
              inputFormatters: [UpperCaseTextFormatter(), example.formatter],
              autocorrect: false,
              keyboardType: example.textInputType,
              autovalidateMode: AutovalidateMode.always,
              validator: example.validator,
              decoration: InputDecoration(
                  hintText: example.hint,
                  hintStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorMaxLines: 1)),
          Positioned(
            right: 0,
            top: 0,
            child: SizedBox(
                width: 48,
                height: 48,
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      child:
                          const Icon(Icons.clear, color: Colors.grey, size: 24),
                      onTap: () => example.textController.clear()),
                )),
          )
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter implements TextInputFormatter {
  const UpperCaseTextFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}

class SpecialMaskTextInputFormatter extends MaskTextInputFormatter {
  static String maskA = "S.####";
  static String maskB = "S.######";

  SpecialMaskTextInputFormatter({String? initialText})
      : super(
            mask: maskA,
            filter: {"#": RegExp('[0-9]'), "S": RegExp('[AB]')},
            initialText: initialText);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.startsWith("A")) {
      if (getMask() != maskA) {
        updateMask(mask: maskA);
      }
    } else {
      if (getMask() != maskB) {
        updateMask(mask: maskB);
      }
    }
    return super.formatEditUpdate(oldValue, newValue);
  }
}
