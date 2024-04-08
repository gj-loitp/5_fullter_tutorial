import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class UUIDScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UUIDScreenState();
  }
}

class _UUIDScreenState extends BaseStatefulState<UUIDScreen> {
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
        "uuid",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser("https://pub.dev/packages/uuid");
        },
      ),
      body: Center(
        child: UIUtils.getText("Check logcat"),
      ),
    );
  }

  void _test() {
    var uuid = Uuid();

    // Generate a v1 (time-based) id
    var v1 = uuid.v1(); // -> '6c84fb90-12c4-11e1-840d-7b25c5ee775a'

    var v1Exact = uuid.v1(options: {
      'node': [0x01, 0x23, 0x45, 0x67, 0x89, 0xab],
      'clockSeq': 0x1234,
      'mSecs': DateTime.utc(2011, 11, 01).millisecondsSinceEpoch,
      'nSecs': 5678
    }); // -> '710b962e-041c-11e1-9234-0123456789ab'

    // Generate a v4 (random) id
    var v4 = uuid.v4(); // -> '110ec58a-a0f2-4ac4-8393-c866d813b8d1'

    // Generate a v4 (crypto-random) id
    var v4Crypto = uuid.v4(config: V4Options(null, CryptoRNG()));
    // -> '110ec58a-a0f2-4ac4-8393-c866d813b8d1'

    // Generate a v5 (namespace-name-sha1-based) id
    var v5 = uuid.v5(Uuid.NAMESPACE_URL, 'www.google.com');
    // -> 'c74a196f-f19d-5ea9-bffd-a2742432fc9c'

    var v8Exact = uuid.v1(options: {
      'randomBytes': [0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0x01, 0x23, 0x45, 0x67],
      'time': DateTime.utc(2011, 10, 9, 8, 7, 6, 543, 210),
    }); // -> '1e1041c7-10b9-662e-9234-0123456789ab'

    print('v1        | $v1');
    print('v1 exact  | $v1Exact');
    print('v4        | $v4');
    print('v4 crypto | $v4Crypto');
    print('v5        | $v5');
    print('v8 exact  | $v8Exact');
  }
}
