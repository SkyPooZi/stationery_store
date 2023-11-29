import 'package:get/get.dart';
import 'package:stationery_store/accountDirectory/Controller/account_controller.dart';

class AccountBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AccountController>(() => AccountController());
  }
}