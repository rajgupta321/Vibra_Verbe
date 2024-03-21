import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          String? languageCode = snapshot.data!.getString('languageCode');
          String? countryCode = snapshot.data!.getString('countryCode');
          Locale defaultLocale = Get.deviceLocale ?? Locale('en', 'US');

          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            translations: AppLocalization(),
            locale: languageCode != null && countryCode != null
                ? Locale(languageCode, countryCode)
                : defaultLocale,
            fallbackLocale: Locale('en', 'US'),
            title: 'vibra_verve',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
          );
        } else {
          return CircularProgressIndicator(); // Example loading indicator
        }
      },
    );
  }
}
