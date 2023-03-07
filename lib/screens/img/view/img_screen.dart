import 'package:flutter/material.dart';

import '../../../utils/list.dart';

class ImgScreen extends StatefulWidget {
  const ImgScreen({Key? key}) : super(key: key);

  @override
  State<ImgScreen> createState() => _ImgScreenState();
}

class _ImgScreenState extends State<ImgScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          title: Text(
            'Images',
            style: TextStyle(color: Colors.pink.shade50),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(2),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'second',arguments: index);
                      },
                      child: Image.asset(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              itemCount: img.length),
        ),
      ),
    );
  }
}
