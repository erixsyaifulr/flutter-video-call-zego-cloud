import 'package:flutter/material.dart';
import 'package:flutter_zego_cloud/config/setting.dart';
import 'package:flutter_zego_cloud/widgets/avatar.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    Key? key,
    required this.callID,
    required this.userID,
    required this.username,
  }) : super(key: key);

  final String callID;
  final String userID;
  final String username;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Setting.zegoAppID,
      appSign: Setting.zegoAppSign,
      userID: userID,
      userName: username,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..layout = ZegoLayout.pictureInPicture()
        ..bottomMenuBarConfig = ZegoBottomMenuBarConfig(buttons: [
          ZegoMenuBarButtonName.toggleCameraButton,
          ZegoMenuBarButtonName.toggleMicrophoneButton,
          ZegoMenuBarButtonName.hangUpButton,
          ZegoMenuBarButtonName.switchAudioOutputButton,
          ZegoMenuBarButtonName.switchCameraButton,
          ZegoMenuBarButtonName.showMemberListButton,
        ])
        ..onHangUpConfirmation = (context) async {
          return await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text("Meh metu po"),
                content: const Text("Tenan ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Ok"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("Gajadi"),
                  ),
                ],
              );
            },
          );
        }
        ..avatarBuilder = ((context, size, user, extraInfo) =>
            Avatar(size: size, username: username))
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
