import 'package:get/get.dart';
import 'package:getx_localization/controller/app_language.dart';

class dep extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppLanguage>(() => AppLanguage(), tag: 'appLang');
  }
}
