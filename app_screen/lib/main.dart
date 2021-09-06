import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/root/root_screen.dart';

void main() async {
  // runAppの前に処理をする場合の宣言
  WidgetsFlutterBinding.ensureInitialized();
  //画面向きを縦に固定
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // androidのstatus barとbottom navigation barの色
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.black,
  ));

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: AppColor.white,
          iconTheme: IconThemeData(color: AppColor.black),
          titleTextStyle: TextStyle(color: Colors.black),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: AppColor.gray90,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: AppColor.white,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: RootScreen(),
    );
  }
}
