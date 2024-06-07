import 'package:money_minder/dio_client.dart';
import 'package:money_minder/home_page_info_client.dart';
import 'package:money_minder/home_page_info_response.dart';
import 'package:money_minder/home_page_repository.dart';

class HomePageRepositoryImpl extends HomePageRepository {
  final _medicineInfoClient = HomePageInfoClient(DioClient().dio);

  @override
  Future<HomePageInfoResponse> getHomePageInfo() async {
    try {
      final response = await _medicineInfoClient.getMedicineList();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
