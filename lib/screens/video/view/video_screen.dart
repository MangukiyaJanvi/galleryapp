import 'package:flutter/material.dart';

import '../../../utils/list.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade200,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          title: Text(
            'Videos',
            style: TextStyle(color: Colors.pink.shade50),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 120,
                              child: Image.asset(
                                img[index],
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NatureVideo.MP4",
                                style: TextStyle(
                                    color: Colors.pink.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "March 7,2023",
                                style: TextStyle(
                                    color: Colors.pink.shade900,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 30,
                            ),
                          ),
                          Icon(
                            Icons.play_circle,
                            size: 30,
                            color: Colors.pink.shade900,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
              itemCount: img.length),
        ),
      ),
    );
  }
}
