import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:media_kit/media_kit.dart';
import 'package:sizer/sizer.dart';
import 'package:udemyplayer/routes/app_pages.dart';
import 'package:udemyplayer/themes/theme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(Sizer(
    builder : (context, orientation, deviceType) =>
        GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Skill Matrix",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: getBlackWhiteTheme(),
        ),
  ));
}

