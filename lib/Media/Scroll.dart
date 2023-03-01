import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  Scroll({super.key});

  final list = [
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
          padding: const EdgeInsets.all(20),
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
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.delete_outline, size: 20),
                        Icon(Icons.mode_edit_outlined, size: 20)
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