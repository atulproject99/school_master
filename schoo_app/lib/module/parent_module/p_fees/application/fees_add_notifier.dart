import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_details.dart';

class FeesTempList extends StateNotifier<List<FeeDetails>> {
  FeesTempList() : super([]);

  Future<void> addItem(FeeDetails item) async {
    state = [...state..add(item)];
  }

  Future<void> remove(FeeDetails item) async {
    state = [...state..remove(item)];
    print(state.length);
  }
}
