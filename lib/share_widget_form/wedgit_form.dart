import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

Widget my_text_feild({
  required String labelText,
  required IconData prifixicon,
  required String henttext,
  required IconData suffexicon,
  required int fontsize,
  required TextInputType keybordtype,
  required TextEditingController contlorer,
  bool h = true,
  bool obsecure = true, // required String contlorer,
}) {
  bool setsecured = true;
  bool setsecured2 = true;
  final clear = Null;
  final _fullname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _Confirmpassword = TextEditingController();
  return TextFormField(
    controller: contlorer,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      filled: true,
      fillColor: Colors.black12,
      //border: OutlineInputBorder(),
      //  icon: Icon(Icons.mail),
      prefixIcon: Icon(prifixicon), ///////////////////////
      //  suffixIcon: Icon(Icons.clear),
      suffixIcon: IconButton(
        icon: Icon(suffexicon),
        onPressed: () {
          contlorer.clear();
        },
      ),
      hintText: henttext,
      hintStyle: TextStyle(color: Colors.grey),
    ),
    // style: TextStyle(color: Colors.red),
    style: TextStyle(fontSize: 20),
    keyboardType: keybordtype,
    //   maxLength: 10,

    textInputAction: TextInputAction.next,
    // obscureText: true,
    //  obscuringCharacter: '.',
  );
}
