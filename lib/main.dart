
import 'package:spotify/Home/widgets/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/search/search.dart';
import 'package:spotify/libary/Library.dart';
import 'package:spotify/premium/Premium.dart ';
import 'package:spotify/utils/notify.dart';
 import 'package:get/get.dart';




void main()
{
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp

  ]);

  
  
  runApp(MyApp());
  }

  class MyApp extends StatefulWidget {
   
  Notify notify =Get.put(Notify());

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
  
    initialRoute: '/',
    routes: {
     '/'  :(context) => const HomePage(),
    '/search'  :(context) =>const Search(),
    '/Library'  :(context) => const Library(),
    '/Premium'  :(context) => const Premium (),      
    }  
      
  ); 
  }
}
   

  
