import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';

class SettingScreen extends StatelessWidget {
  // final bool isOn;
  // final Function(bool) onChangeIsOn;
  const SettingScreen({
    Key? key,
    // required this.isOn,
    // required this.onChangeIsOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('設定')),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //通知
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    '通知',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    //activeColor: Color(0xFFff4a4a),
                    trackColor: Colors.grey,
                    //value: isOn,
                    value: true,
                    //onChanged: onChangeIsOn,
                    onChanged:(bool value){},
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),

            //ダークモード
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    'ダークモード',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    //activeColor: Color(0xFFff4a4a),
                    trackColor: Colors.grey,
                    //value: isOn,
                    value: true,
                    //onChanged: onChangeIsOn,
                    onChanged:(bool value){},
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),

            //プロフィール設定
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
                padding: EdgeInsets.only(
                  top: 13,
                  left: 70,
                  bottom: 8,
                ),
              child: Row(
                children: [
                  Text(
                    'プロフィール設定',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  ImageIcon(
                    Assets.images.next,
                    size: 20,
                    color: AppColor.gray30,
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),

            //レビューを書く
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    'レビューを書く',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  ImageIcon(
                    Assets.images.next,
                    size: 20,
                    color: AppColor.gray30,
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),

            //友達に教える
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    '友達に教える',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  ImageIcon(
                    Assets.images.next,
                    size: 20,
                    color: AppColor.gray30,
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Text(
                    'ヒントを見る',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  ImageIcon(
                    Assets.images.next,
                    size: 20,
                    color: AppColor.gray30,
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ),

            //アプリバージョン
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom  : BorderSide(
                    width: 1.0,
                    color: Colors.black12,
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                top: 13,
                left: 70,
                bottom: 8,
              ),
                child: Row(
                  children: [
                    Text(
                      'アプリバージョン',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: AppColor.black,
                        fontSize: 20.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '1.00',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: AppColor.black,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(width: 25.0),
                  ],
                ),
            ),
            Spacer(),
          ]
      ),
    );
  }
}