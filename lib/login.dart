import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:untitled/share_widget_form/wedgit_form.dart';
import 'Task.dart';
import 'main.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool setsecured = true;
  bool setsecured2 = true;
  final clear = Null;
  final _fullname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _Confirmpassword = TextEditingController();
  @override
  // This method is rerun every time setState is called, for in
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: h.height / 2.3,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h.height / 15,
          ),
          SizedBox(
              height: h.height / 9,
              width: h.width / 1.1,
              child: my_text_feild(
                  labelText: "Email",
                  prifixicon: Icons.email_outlined,
                  henttext: "ahhasa842@gmail.com",
                  suffexicon: Icons.clear,
                  fontsize: 20,
                  keybordtype: TextInputType.emailAddress,
                  contlorer: _email)),
          SizedBox(
            height: h.height / 80,
          ),
          SizedBox(
            height: h.height / 9,
            width: h.width / 1.1,
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                filled: true,
                fillColor: Colors.black12,
                //border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),

                suffixIcon: IconButton(
                  icon: setsecured == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      setsecured = !setsecured;
                    });
                  },
                ),
              ),
              obscureText: setsecured,
              obscuringCharacter: '*',
              //maxLength: 15,
              style: TextStyle(fontSize: 20),
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            height: h.height / 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Task()));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: Size(150, 50.0),
              primary: Colors.blue,
              shadowColor: Colors.purple,
              textStyle: TextStyle(fontSize: 22),
            ),
            child: Text("Login"),
          ),
          SizedBox(
            height: h.height / 60,
          ),
          SizedBox(
            height: h.height / 60,
          ),
        ],
      ),
    )));
  }
}
