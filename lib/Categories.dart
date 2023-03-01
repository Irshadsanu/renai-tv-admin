
import 'package:flutter/material.dart';
import 'package:renai_admin/Media/Media.dart';
import 'package:renai_admin/Users/User.dart';
import 'package:renai_admin/appbar.dart';

import 'Category/Categ.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(85, 85, 85, 100),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Appbar()
      ),

      body: Column(
        children: [
          SizedBox(
            width: 430,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 25,
                right: 25,
              ),
              child: TextButton(

                style: TextButton.styleFrom(backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Media(),));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 50,
                      ),
                      child: SizedBox(
                          width: 30,
                          child: Image.asset("assets/Linkicon.png",color: Colors.amber,),
                      ),
                    ),
                    const Text("MEDIA",style:TextStyle(color: Colors.amber),),
                  ],
                ),
              ),
            ),
          ),


          SizedBox(
            width: 430,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 25,
                right: 25,
              ),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Users(),));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 50
                      ),
                      child: SizedBox(
                          width: 30,
                          child: Image.asset("assets/people.png",color: Colors.amber,),
                      ),
                    ),
                    const Text("USERS",style: TextStyle(color: Colors.amber),),
                  ],
                ),
              ),
            ),
          ),


          SizedBox(
            width: 430,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 25,
                right: 25,
              ),
              child: TextButton(

                style: TextButton.styleFrom(backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Categ(),));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 30,
                      ),
                      child: SizedBox(
                          width: 30,
                          child: Image.asset("assets/categories.png",color: Colors.amber,),
                      ),
                    ),
                    const Text("CATEGORIES",style: TextStyle(
                      color: Colors.amber,
                    ),),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),


    );
  }
}
