import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/my_upi_pay/meta.dart';
import 'package:schoo_app/module/parent_module/p_fees/shared/provider.dart';

class UpiApps extends HookConsumerWidget {
  const UpiApps(
      {Key? key,
      required this.apps,
      required this.amount,
      required this.orderId})
      : super(key: key);
  final List<ApplicationMeta> apps;
  final String orderId;
  final String amount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      // childAspectRatio: 1.6,
      physics: const NeverScrollableScrollPhysics(),
      children: apps
          .map(
            (it) => Material(
              key: ObjectKey(it.upiApplication),
              // color: Colors.grey[200],
              child: InkWell(
                onTap: () {
                  ref
                      .read(upiPaymentProvider.notifier)
                      .doTransaction(it, orderId, amount, ref, context);
                },
                // onTap: () => doUpiTransation(it, orderId, amount),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    it.iconImage(48),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      alignment: Alignment.center,
                      child: Text(
                        it.upiApplication.getAppName(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}



/* 

GridView _appsGrid(List<ApplicationMeta> apps, String orderId, String amount) {
  apps.sort((a, b) => a.upiApplication
      .getAppName()
      .toLowerCase()
      .compareTo(b.upiApplication.getAppName().toLowerCase()));
  return GridView.count(
    crossAxisCount: 4,
    shrinkWrap: true,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    // childAspectRatio: 1.6,
    physics: const NeverScrollableScrollPhysics(),
    children: apps
        .map(
          (it) => Material(
            key: ObjectKey(it.upiApplication),
            // color: Colors.grey[200],
            child: InkWell(
              onTap: () => doUpiTransation(it, orderId, amount),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  it.iconImage(48),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    alignment: Alignment.center,
                    child: Text(
                      it.upiApplication.getAppName(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList(),
  );
}



 */