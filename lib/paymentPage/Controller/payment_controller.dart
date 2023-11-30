import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaymentController extends GetxController {
  late final SharedPreferences prefs;
  RxString intCurrency = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('currency')) {
      intCurrency.value = prefs.getString('currency') ?? "0";
    }
    print(intCurrency);
  }
}