import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_info_response.freezed.dart';
part 'home_page_info_response.g.dart';

@freezed
class HomePageInfoResponse with _$HomePageInfoResponse {
  const factory HomePageInfoResponse({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "cod") required int cod,
  }) = _HomePageInfoResponse;

  factory HomePageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$HomePageInfoResponseFromJson(json);
}

// @freezed
// class Clouds with _$Clouds {
//   const factory Clouds({
//     @JsonKey(name: "all") required int all,
//   }) = _Clouds;
//
//   factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
// }
