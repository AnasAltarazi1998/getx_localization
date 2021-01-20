import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_localization/controller/app_language.dart';

class HomeScreen extends StatelessWidget {
  final AppLanguage langControl = Get.find(tag: 'appLang');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "login".tr,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "SignUp".tr,
              style: TextStyle(fontSize: 32),
            ),
            GetBuilder<AppLanguage>(
              builder: (_) {
                return DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("en"),
                      value: 'en',
                    ),
                    DropdownMenuItem(
                      child: Text("ar"),
                      value: 'ar',
                    ),
                  ],
                  value: langControl.appLocale,
                  onChanged: (value) {
                    langControl.changeLanguage(value);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
