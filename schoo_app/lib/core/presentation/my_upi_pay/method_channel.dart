import 'dart:developer';

import 'package:schoo_app/core/presentation/my_upi_pay/transaction_details.dart';
import 'package:universal_io/io.dart' as io;
import 'package:flutter/services.dart';

class UpiMethodChannel {
  final MethodChannel _channel = const MethodChannel('upi_pay');
  static final _singleton = UpiMethodChannel._inner();
  factory UpiMethodChannel() {
    return _singleton;
  }
  UpiMethodChannel._inner();

  Future<String?> initiateTransaction(
      TransactionDetails transactionDetails) async {
    if (io.Platform.isAndroid) {
      return await _channel.invokeMethod<String>(
          'initiateTransaction', transactionDetails.toJson());
    }
    throw UnsupportedError(
        'The `initiateTransaction` call is supported only on Android');
  }

  Future<bool?> launch(TransactionDetails transactionDetails) async {
    if (io.Platform.isIOS) {
      return await _channel
          .invokeMethod<bool>('launch', {'uri': transactionDetails.toString()});
    }
    throw UnsupportedError('The `launch` call is supported only on iOS');
  }

  Future<List<Map<dynamic, dynamic>>?> getInstalledUpiApps() async {
    if (io.Platform.isAndroid) {
      log("result ${await _channel.invokeListMethod<Map<dynamic, dynamic>>('getInstalledUpiApps')}");
      return await _channel
          .invokeListMethod<Map<dynamic, dynamic>>('getInstalledUpiApps');
    }
    throw UnsupportedError('The `getInstalledUpiApps` call is supported only '
        'on Android');
  }

  Future<bool?> canLaunch(String scheme) async {
    if (io.Platform.isIOS) {
      return await _channel
          .invokeMethod<bool>('canLaunch', {'uri': scheme + "://"});
    }
    throw UnsupportedError('The `canLaunch` call is supported only on iOS');
  }
}
