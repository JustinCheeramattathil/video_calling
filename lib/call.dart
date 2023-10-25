import 'package:flutter/material.dart';
import 'package:videocall_zego/constants.dart';
import 'package:videocall_zego/loginpage.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Constants.appId,
      appSign: Constants.appSign,
      userID: LoginPage.userid,
      userName: LoginPage.name,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
