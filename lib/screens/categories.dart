import 'package:flutter/material.dart';
import 'package:shop_app/services/utils.dart';
import 'package:shop_app/widgets/categories_widget.dart';
import 'package:shop_app/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColors = [
    const Color.fromARGB(255, 184, 182, 182),
    const Color.fromARGB(255, 184, 182, 182),
    const Color.fromARGB(255, 184, 182, 182),
    const Color.fromARGB(255, 184, 182, 182),
    const Color.fromARGB(255, 184, 182, 182),
    const Color.fromARGB(255, 184, 182, 182),
  ];

  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/cat/phone.png',
      'catText': 'Phone',
    },
    {
      'imgPath': 'assets/images/cat/laptop.jpg',
      'catText': 'laptops',
    },
    {
      'imgPath': 'assets/images/cat/earphones.jpg',
      'catText': 'earphones',
    },
    {
      'imgPath': 'assets/images/cat/smartwatch.jpg',
      'catText': 'smartwatch',
    },
    {
      'imgPath': 'assets/images/cat/headphones.jpg',
      'catText': 'headphones',
    },
    {
      'imgPath': 'assets/images/cat/smarttv.jpg',
      'catText': 'smart tv',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 12, // Vertical spacing
            mainAxisSpacing: 10, // Horizontal spacing
            children: List.generate(6, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
              );
            }),
          ),
        ));
  }
}
