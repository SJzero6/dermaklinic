import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class BiometricLockSwitch extends StatefulWidget {
  @override
  _BiometricLockSwitchState createState() => _BiometricLockSwitchState();
}

class _BiometricLockSwitchState extends State<BiometricLockSwitch> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isBiometricSupported = false;
  bool _isBiometricEnabled = false;

  @override
  void initState() {
    super.initState();
    _checkBiometricSupport();
  }

  Future<void> _checkBiometricSupport() async {
    bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
    setState(() {
      _isBiometricSupported = canCheckBiometrics;
    });
  }

  Future<void> _toggleBiometricLock(bool value) async {
    if (value) {
      // Enable biometric lock
      _isBiometricEnabled = await _localAuth.authenticate(
        localizedReason: 'Enable biometric lock for the app.',
      );
    } else {
      // Disable biometric lock
      setState(() {
        _isBiometricEnabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_isBiometricSupported)
          SwitchListTile(
            title: Text('Enable Biometric Lock'),
            value: _isBiometricEnabled,
            onChanged: _toggleBiometricLock,
          ),
        if (!_isBiometricSupported)
          Text('Biometric authentication is not available on this device.'),
      ],
    );
  }
}
