import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  @override
  FutureOr<HomePageState> build() async {
    final result = await getData();
    return HomePageState(name: '', date: result);
  }

  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return DateTime.now().toString();
  }

  Future<void> refreshData() async {
    state = const AsyncLoading();
    try {
      if (state.value == null) {
        state = AsyncError(Exception('error'), StackTrace.current);
        return;
      }
      final result = await getData();
      state = AsyncData(state.value!.copyWith(date: result));
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
