import 'package:money_minder/model/home_page_info_response.dart';
import 'package:money_minder/model/home_page_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_repository.g.dart';

@riverpod
HomePageRepositoryImpl homePageRepository(
  HomePageRepositoryRef ref,
) {
  return HomePageRepositoryImpl();
}

abstract class HomePageRepository {
  /// データを取得
  Future<HomePageInfoResponse> getHomePageInfo();
}
