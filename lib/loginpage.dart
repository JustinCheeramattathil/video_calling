import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String name = "";
  static String userid = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val) {
                name = val;
              },
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (val) {
                userid = val;
              },
              decoration: const InputDecoration(
                  hintText: "UserId", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                child: const Text('Join'))
          ],
        ),
      ),
    );
  }
}
