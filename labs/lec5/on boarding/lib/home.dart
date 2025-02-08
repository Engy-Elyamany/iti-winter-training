import 'package:flutter/material.dart';
import 'package:iti_training/pageData.dart';
import 'package:iti_training/pageItem.dart';
import 'package:iti_training/resources/imageManager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<pageData> pageDataList = [
  pageData(
      image: image_manager.img1,
      mainText: 'Better way to learning is calling you!',
      description:
          'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue '),
  pageData(
      image: image_manager.img2,
      mainText: 'Find yourself  by doing whatever you do !',
      description:
          'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue '),
  pageData(
      image: image_manager.img3,
      mainText: 'It’s not just learning,It’s a promise!',
      description:
          'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ',
      lastPage: true)
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      itemCount: pageDataList.length,
      itemBuilder: (BuildContext context, int index) =>
          pageItem(pageD: pageDataList[index]),
    ));
  }
}
