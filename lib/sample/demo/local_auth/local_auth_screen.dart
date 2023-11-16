import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class LocalAuthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LocalAuthScreenState();
  }
}

class _LocalAuthScreenState extends BaseStatefulState<LocalAuthScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "local_auth",
        () {
          Get.back();
        },
        () {
          UrlLauncherUtils.launchInBrowser(
              "https://pub.dev/packages/local_auth");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_supportState == _SupportState.unknown)
                CircularProgressIndicator()
              else if (_supportState == _SupportState.supported)
                Text("This device is supported")
              else
                Text("This device is not supported"),
              Divider(height: 100),
              Text('Can check biometrics: $_canCheckBiometrics\n'),
              ElevatedButton(
                child: const Text('Check biometrics'),
                onPressed: _checkBiometrics,
              ),
              Divider(height: 100),
              Text('Available biometrics: $_availableBiometrics\n'),
              ElevatedButton(
                child: const Text('Get available biometrics'),
                onPressed: _getAvailableBiometrics,
              ),
              Divider(height: 100),
              Text('Current State: $_authorized\n'),
              (_isAuthenticating)
                  ? ElevatedButton(
                      onPressed: _cancelAuthentication,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Cancel Authentication"),
                          Icon(Icons.cancel),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        ElevatedButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Authenticate'),
                              Icon(Icons.perm_device_information),
                            ],
                          ),
                          onPressed: _authenticate,
                        ),
                        ElevatedButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(_isAuthenticating
                                  ? 'Cancel'
                                  : 'Authenticate: biometrics only'),
                              Icon(Icons.fingerprint),
                            ],
                          ),
                          onPressed: _authenticateWithBiometrics,
                        ),
                      ],
                    ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason: 'Let OS determine authentication method',
          useErrorDialogs: true,
          stickyAuth: true);
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = "Error - ${e.message}";
      });
      return;
    }
    if (!mounted) return;

    setState(
        () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason:
              'Scan your fingerprint (or face or whatever) to authenticate',
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = "Error - ${e.message}";
      });
      return;
    }
    if (!mounted) return;

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
  }

  void _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
