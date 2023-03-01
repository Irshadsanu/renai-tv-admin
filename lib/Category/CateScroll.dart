import 'package:flutter/material.dart';

class CateScroll extends StatelessWidget {
  CateScroll({super.key});

  final list = [
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg","https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg","https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
          padding: const EdgeInsets.only(
            top: 10,
            left: 35,
            right: 35,
          ),
          childAspectRatio: (1 / .65),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: List.generate(list.length, (index) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    list[index],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 7,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 18,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.delete_outline_rounded,
                          size: 15,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.mode_edit_outlined,
                          size: 15,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          })),
    );
  }
}