import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/common/widgets/app_component_base.dart';
import 'package:stoxplay/features/splash_page/splash_page.dart';

import 'application/application.dart';

GlobalKey<ScaffoldMessengerState> snackBarKey =
    GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppComponentBase.instance.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

