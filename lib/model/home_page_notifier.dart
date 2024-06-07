import 'package:money_minder/model/home_page_info_response.dart';
import 'package:money_minder/model/home_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'home_page_service.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  @override
  FutureOr<HomePageState> build() async {
    final result = await getData();
    return HomePageState(
      name: 'zhang',
      homePageInfoResponse: result,
    );
  }

  Future<HomePageInfoResponse> getData() async {
    final service = ref.read(homePageServiceProvider);
    return await service.getHomePageInfo();
  }

  Future<void> refreshData() async {
    state = const AsyncLoading();
    try {
      if (state.value == null) {
        state = AsyncError(Exception('error'), StackTrace.current);
        return;
      }
      final result = await getData();
      state = AsyncData(state.value!.copyWith(homePageInfoResponse: result));
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
