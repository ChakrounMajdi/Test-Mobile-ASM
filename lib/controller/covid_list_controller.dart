import 'package:get/get.dart';
import 'package:test_mobile_asm/api_sercice/api_covid_tracking.dart';
import 'package:test_mobile_asm/model/covid_model.dart';

class CovidListController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<CovidModel> covidList = <CovidModel>[].obs;
  final ApiCovidTracking _apiCovidTracking = ApiCovidTracking();

  @override
  void onInit() {
    getCovidList();
    super.onInit();
  }

  Future<void> getCovidList() async {
    try {
      isLoading(true);
      List<CovidModel> covidList = await _apiCovidTracking.getCovidList();
      this.covidList.assignAll(covidList);
    } finally {
      isLoading(false);
    }
  }
}
