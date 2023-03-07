import 'package:flutter/material.dart';
import 'package:galleryapp/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../../utils/list.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    int i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        body: PageView.builder(
          controller: PageController(initialPage: i),
          itemCount: img.length,
          itemBuilder: (context, index) => Center(
            child: Container(
              height: 350,
              width: 350,
              child: Image.asset(
                img[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
