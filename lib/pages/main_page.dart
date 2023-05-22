import 'package:flutter/material.dart';
import 'package:flutter_zego_cloud/pages/call_page.dart';

import '../widgets/application_appbar.dart';
import '../widgets/input_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final TextEditingController callIdController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.symmetric(
                vertical: 70,
                horizontal: 20,
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      InputWidget(
                        callIdController: callIdController,
                        hintText: 'Call ID',
                        margin: const EdgeInsets.only(top: 30),
                      ),
                      InputWidget(
                        callIdController: userIdController,
                        hintText: 'User ID',
                      ),
                      InputWidget(
                        callIdController: userNameController,
                        hintText: 'User Name',
                        margin: const EdgeInsets.only(top: 10, bottom: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return CallPage(
                                      callID: callIdController.text,
                                      userID: userIdController.text,
                                      username: userNameController.text,
                                    );
                                  }),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue.shade700),
                              ),
                              child: const Text(
                                'Join Video Call',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const ApplicationAppbar()
          ],
        ),
      ),
    );
  }
}
