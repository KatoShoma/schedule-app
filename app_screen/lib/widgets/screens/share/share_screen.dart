import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:schedule_application/gen/assets.gen.dart';
import 'package:schedule_application/utils/color/app_color.dart';
import 'package:schedule_application/widgets/screens/share/children/share_button.dart';
import 'package:schedule_application/widgets/screens/share/children/share_create_text.dart';
import 'package:schedule_application/widgets/screens/share/share_screen_state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ShareScreen extends StatelessWidget {
  final WebSocketChannel channel;

  const ShareScreen({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> numberOfPeople;
    return StateNotifierProvider<ShareScreenController, ShareScreenState>(
      create: (_) => ShareScreenController(
        context: context,
      ),
      builder: (context, _) {
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
                    color: AppColor.gray90,
                  ),
                  Spacer(),
                  StreamBuilder(
                      stream: channel.stream,
                      builder: (context, snapshot) {
                        if(!snapshot.hasData){
                          return CircularProgressIndicator();
                        } else {
                          numberOfPeople = json.decode(snapshot.data.toString());
                          print(snapshot.data.toString());
                        };
                        return ShareText(
                          user: numberOfPeople['user_cnt'],
                          comp: numberOfPeople['comp_cnt'],
                        );
                        // return Column(
                        //   children: [
                        //     Row(
                        //       children:[
                        //         Text('aaaaaaa'),
                        //         Text('bbbbbbbbbb'),
                        //
                        //
                        // ]
                        //
                        //     ),
                        //
                        //     Row(
                        //         children:[
                        //           Text('aaaaaaa'),
                        //           Text('bbbbbbbbbb'),
                        //
                        //         ]
                        //
                        //     ),
                        //   ]
                          // children: [
                          //   Row(
                          //     children: [
                          //       Text(
                          //         '現在: ',
                          //         textAlign: TextAlign.center,
                          //         style: const TextStyle(
                          //           color: AppColor.black,
                          //           fontSize: 25.0,
                          //         ),
                          //       ),
                          //       Text(
                          //         '　人が\n夏休み最終日を満喫中',
                          //         textAlign: TextAlign.center,
                          //         style: const TextStyle(
                          //           color: AppColor.black,
                          //           fontSize: 30.0,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          //   Spacer(),
                          //   Row(
                          //     children: [
                          //       Text(
                          //         '夏休みを満喫済み ',
                          //         textAlign: TextAlign.center,
                          //         style: const TextStyle(
                          //           color: AppColor.red,
                          //           fontSize: 25.0,
                          //         ),
                          //       ),
                          //       Text(
                          //         '　人',
                          //         textAlign: TextAlign.center,
                          //         style: const TextStyle(
                          //           color: AppColor.red,
                          //           fontSize: 45.0,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ],
                        // );
                        // return Text('aaaaaaa');
                      },
                  ),

                  Spacer(),
                  ShareButton(
                    isPressedEnjoyedButton: context.select<ShareScreenState, bool>((state) => state.isPressedEnjoyedButton),
                    onPressed: () => context.read<ShareScreenController>().pressEnjoyedButton(channel),
                  ),
                  Spacer(),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

