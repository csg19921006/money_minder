import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_info_response.freezed.dart';
part 'home_page_info_response.g.dart';

@freezed
class HomePageInfoResponse with _$HomePageInfoResponse {
  const factory HomePageInfoResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "paths") required List<String> paths,
  }) = _HomePageInfoResponse;

  factory HomePageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$HomePageInfoResponseFromJson(json);
}

// @freezed
// class HomePageInfoResponseItem with _$HomePageInfoResponseItem {
//   const factory HomePageInfoResponseItem({
//     @JsonKey(name: "id") required int id,
//     @JsonKey(name: "name") required String name,
//     @JsonKey(name: "company") required String company,
//     @JsonKey(name: "username") required String username,
//     @JsonKey(name: "email") required String email,
//     @JsonKey(name: "address") required String address,
//     @JsonKey(name: "zip") required String zip,
//     @JsonKey(name: "state") required String state,
//     @JsonKey(name: "country") required String country,
//     @JsonKey(name: "phone") required String phone,
//     @JsonKey(name: "photo") required String photo,
//   }) = _HomePageInfoResponseItem;
//
//   factory HomePageInfoResponseItem.fromJson(Map<String, dynamic> json) =>
//       _$HomePageInfoResponseItemFromJson(json);
// }
