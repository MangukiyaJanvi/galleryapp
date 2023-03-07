import 'package:flutter/material.dart';
import 'package:galleryapp/screens/home/provider/home_provider.dart';
import 'package:galleryapp/screens/img/view/img_screen.dart';
import 'package:galleryapp/screens/profile/view/profile_screen.dart';
import 'package:galleryapp/screens/video/view/video_screen.dart';
import 'package:galleryapp/utils/list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? hfalse;
  HomeProvider? htrue;
  List ScreenList=[ImgScreen(),VideoScreen(),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    hfalse=Provider.of<HomeProvider>(context,listen: false);
    htrue=Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: ScreenList[htrue!.i],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink.shade900,
          fixedColor: Colors.pink.shade200,
          unselectedItemColor: Colors.pink.shade50,
          currentIndex: htrue!.i,
          onTap: (value) {
            hfalse!.Add(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.smart_display_outlined), label: 'Videos'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
