import 'package:money_minder/model/home_page_info_response.dart';
import 'package:money_minder/model/home_page_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_service.g.dart';

@riverpod
HomePageService homePageService(HomePageServiceRef ref) {
  final repository = ref.read(homePageRepositoryProvider);
  return HomePageService(repository);
}

/// お薬手帳情報を扱うServiceクラス
class HomePageService {
  const HomePageService(this._repository);

  final HomePageRepository _repository;

  /// お薬手帳情報リストの取得
  Future<HomePageInfoResponse> getHomePageInfo() async {
    final response = await _repository.getHomePageInfo();
    return response;
  }
}
