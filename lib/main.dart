import 'package:flutter/material.dart';
import 'package:galleryapp/screens/add/view/pageview_screen.dart';
import 'package:galleryapp/screens/home/provider/home_provider.dart';
import 'package:galleryapp/screens/home/view/home_screen.dart';
import 'package:galleryapp/screens/img/view/img_screen.dart';
import 'package:galleryapp/screens/profile/view/profile_screen.dart';
import 'package:galleryapp/screens/video/view/video_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'img':(context) => ImgScreen(),
          'video':(context) => VideoScreen(),
          'profile':(context) => ProfileScreen(),
          'second':(context) => Second(),
        },
      ),
    ),
  );
}