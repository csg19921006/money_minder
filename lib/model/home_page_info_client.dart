import 'package:dio/dio.dart' hide Headers;
import 'package:money_minder/model/home_page_info_response.dart';
import 'package:retrofit/retrofit.dart';

part 'home_page_info_client.g.dart';

@RestApi(
  baseUrl: 'https://fake-json-api.mock.beeceptor.com/',
)
abstract class HomePageInfoClient {
  factory HomePageInfoClient(Dio dio) = _HomePageInfoClient;

  @GET('')
  Future<HomePageInfoResponse> getHomePageInfo();

  // @GET('/prescriptions')
  // Future<HomePageInfoResponse> getMedicineInfoList({
  //   @Query('key') required String key,
  // });
  //
  // @DELETE('/medicine')
  // Future<HomePageInfoResponse> deleteMedicineRecord({
  //   @Query('sortKey') required String sortKey,
  //   @Query('prescriptionMedicineRecSeq') String? prescriptionMedicineRecSeq,
  // });
  //
  // @POST('/medicineRecord/{memberId}/drug')
  // Future<HomePageInfoResponse> postOtcMedicineRecord({
  //   @Path('memberId') required String memberId,
  //   @Body() required Map<String, dynamic> body,
  // });
}
