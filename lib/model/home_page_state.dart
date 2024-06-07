import 'package:freezed_annotation/freezed_annotation.dart';

import 'home_page_info_response.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    String? name,
    HomePageInfoResponse? homePageInfoResponse,
  }) = _HomePageState;
}
