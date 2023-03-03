import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:untitled/share_widget_form/wedgit_form.dart';
import 'login.dart';
import 'package:flutter/widgets.dart';
import 'Task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
      ),
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
  final formkey = GlobalKey<FormState>();
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
            //physics: BouncingScrollPhysics(),
            child: Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: h.height / 3.7,
              color: Colors.purple,
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h.height / 40,
          ),
          SizedBox(
              //    height: 65,
              width: h.width / 1.1,
              child: my_text_feild(
                  labelText: "Full Name",
                  prifixicon: Icons.person,
                  henttext: "Ahmed Hany Saad",
                  suffexicon: Icons.clear,
                  fontsize: 20,
                  keybordtype: TextInputType.emailAddress,
                  contlorer: _fullname)),
          SizedBox(
            height: h.height / 45,
          ),
          SizedBox(
            // height: 65,
            width: h.width / 1.1,
            key: formkey,
            child: TextFormField(
              controller: _email,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter principal amount';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.black12,
                //border: OutlineInputBorder(),
                //  icon: Icon(Icons.mail),
                prefixIcon: Icon(Icons.email_outlined), ///////////////////////
                //  suffixIcon: Icon(Icons.clear),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _email.clear();
                  },
                ),
                hintText: "ahhasa842@gmail.com",
                hintStyle: TextStyle(color: Colors.grey),
              ),
              // style: TextStyle(color: Colors.red),
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.emailAddress,
              //   maxLength: 10,

              textInputAction: TextInputAction.next,
              // obscureText: true,
              //  obscuringCharacter: '.',
            ),
          ),
          SizedBox(
            height: h.height / 45,
          ),
          SizedBox(
              // height: 65,
              width: h.width / 1.1,
              child: my_text_feild(
                  labelText: "Phone Number",
                  prifixicon: Icons.call,
                  henttext: "01121036522",
                  suffexicon: Icons.clear,
                  fontsize: 20,
                  keybordtype: TextInputType.number,
                  contlorer: _phone)),
          SizedBox(
            height: h.height / 45,
          ),
          SizedBox(
            // height: 65,
            width: h.width / 1.1,
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                filled: true,
                fillColor: Colors.black12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ///////////////////// border: OutlineInputBorder(),
                ///////////////////////////////    border: InputBorder.none,
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
              //   maxLength: 15,
              style: TextStyle(fontSize: 20),
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            height: h.height / 45,
          ),
          SizedBox(
            // height: 65,
            width: h.width / 1.1,
            child: TextField(
              controller: _Confirmpassword,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                filled: true,
                fillColor: Colors.black12,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ///////////////////// border: OutlineInputBorder(),
                ///////////////////////////////    border: InputBorder.none,
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: setsecured2 == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      setsecured2 = !setsecured2;
                    });
                  },
                ),
              ),
              obscureText: setsecured2,
              obscuringCharacter: '*',
              //   maxLength: 15,
              style: TextStyle(fontSize: 20),
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(
            height: h.height / 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Task()));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: Size(h.width / 3, h.height / 13),
              primary: Colors.purple,
              shadowColor: Colors.purple,
              textStyle: TextStyle(fontSize: 22),
            ),
            child: Text("Regiser"),
          ),
          SizedBox(
            height: h.height / 70,
          ),
          ElevatedButton(
            onPressed: () {
              print('Name:${_fullname}');
              print('Name:${_email}');
              print('Name:${_phone}');
              print('Name:${_password}');
              print('Name:${_Confirmpassword}');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const login()));
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
              textStyle: TextStyle(fontSize: 25),
              minimumSize: Size(h.width / 3, h.height / 13),
              backgroundColor: Colors.white,
              shadowColor: Colors.purple,
              side: BorderSide(width: 0.7, color: Colors.purple),
            ),
          ),
          SizedBox(
            height: h.height / 60,
          )
        ],
      ),
    )));
  }
}
