import 'package:flutter/material.dart';
import 'package:rest_menu_app/firebase_options.dart';

import 'package:rest_menu_app/screens/addCart.dart';
import '../screens/homePage.dart';
import '../login/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuApp(

      ),

      // theme: ThemeData(

      // ),
      // routes: {
      //   "/":(context) => HomePage(),
      //   "/":(context) => CartPage()
      // },
    )
  );
}
class MenuApp extends StatelessWidget {
  const MenuApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Auth(),
    );
  }
}
