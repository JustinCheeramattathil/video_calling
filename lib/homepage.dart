import 'package:flutter/material.dart';
import 'package:videocall_zego/call.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child:  Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CallPage(callID: "1")));
            },
            child: const Text('Join call'),
          ),
        ),
      ),
    );
  }
}
