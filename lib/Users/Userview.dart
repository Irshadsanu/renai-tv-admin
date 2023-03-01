import 'package:flutter/material.dart';

class Userview extends StatelessWidget {
  const Userview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  title: Text(
                    'MOHAMMED ABDULLAH',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return const SizedBox();
              },
              itemCount: 40)),
    );
  }
}