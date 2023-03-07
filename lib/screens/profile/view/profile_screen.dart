import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          title: Text(
            'My Profile',
            style: TextStyle(color: Colors.pink.shade50),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings, color: Colors.pink.shade50),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 65,
                        backgroundImage: AssetImage('assets/images/img5.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 95, left: 85),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2, color: Colors.pink.shade900)
                              ],
                              color: Colors.pink.shade100),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.pink.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Janvi Mangukiya',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'janupatel122@gmail.com',
                        style: TextStyle(
                            color: Colors.pink.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.pink.shade900),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.pink.shade50),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Favorites',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.save_alt,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Download',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(height: 1.5,color: Colors.pink.shade800,),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Language',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.display_settings,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Display',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.feed_outlined,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Feed Preference',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.featured_video_rounded,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Subscriptions',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(height: 1.5,color: Colors.pink.shade800,),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Clear Cache',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.pink.shade900,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Clear History',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.login_outlined,
                      color: Colors.red.shade900,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Log Out',
                    style: TextStyle(color: Colors.pink.shade900,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 15,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.pink.shade900,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
