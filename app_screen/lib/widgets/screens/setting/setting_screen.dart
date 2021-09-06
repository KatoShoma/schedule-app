import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('設定')),
      ),
      body: Container(

      ),
    );
  }
}