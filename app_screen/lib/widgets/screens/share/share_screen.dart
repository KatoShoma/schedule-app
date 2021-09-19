import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/share/children/share_button.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('共有')),
      ),
      body: Container(
        child: Center(
            child: Column(
              children: [
                Spacer(),
                ImageIcon(
                  Assets.images.synergy,
                  size: 200,
                ),
                Spacer(),
                Text(
                  '現在: 10,000 人が\n夏休みを満喫中',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColor.black,
                    fontSize: 25.0,
                  ),
                ),
                Spacer(),
                Text(
                  '夏休みを満喫済み 100 人',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColor.red,
                    fontSize: 25.0,
                  ),
                ),
                Spacer(),
                ShareButton(
                  title: '夏休みを満喫しました',
                  onPressed: (){
                  //  TODO:ボタンを押した時リアクションを流す（モザイク画像完成かまだわからん）
                  },
                ),
                Spacer(),
              ],
          )
        )
      ),
    );
  }
}