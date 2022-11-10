import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shoe_store/third_screen.dart';

class second_screen extends StatefulWidget {
  const second_screen({super.key});


  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  List names = ['ALL', 'FOR MEN', 'FOR WOMEN', 'FOR KIDS'];
  var topicchoosen = 'ALL';
  List shoes = ['Air Max', "Pastero", "Spongy", "VelVet", "Destiny"];
  List Price = ["Rs 3000", "Rs 5000", "Rs 4500", "Rs 6000", "Rs 8000"];
  List describe = [
    "Floating air",
    "disco bar blue",
    "Presses like pop",
    "comfort cushion",
    "rocky hard"
  ];
  List images = [
    'images/shoe1.png',
    'images/shoe2.png',
    'images/shoe3.png',
    'images/shoe4.png',
    'images/shoe5.png'
  ];

  List<List<Color>> colors = [
    [Colors.pink.withOpacity(0.2), Colors.white.withOpacity(1)],
    [Colors.purple.withOpacity(0.2), Colors.white.withOpacity(1)],
    [Colors.orange.withOpacity(0.3), Colors.white.withOpacity(1)],
    [Colors.red.withOpacity(0.3), Colors.white.withOpacity(1)],
    [Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)],
  ];
  // List<List<Color>> colors = [Colors.pink.withOpacity(0,2),Colors.white.withOpacity(1)],
  // [Colors.pink.withOpacity(0,2),Colors.white.withOpacity(1)],

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            centerTitle: true,
            title: Icon(
              Icons.eco,
              color: Colors.black,
              size: 50,
            ),
            actions: [
              Icon(
                Icons.shopping_cart_rounded,
                color: Colors.black,
                size: 35,
              ),
              SizedBox(
                width: 22,
              )
            ],
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 22),
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "BELIEVE YOU CAN",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "MAKE IMPACT",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                child: ListView.builder(
                    itemCount: names.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                topicchoosen = names[index];
                              
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 4),
                              decoration: BoxDecoration(
                                color: topicchoosen == names[index]
                                    ? Colors.black.withOpacity(0.8)
                                    : Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                names[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: topicchoosen == names[index]
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            )),
                      );
                    })),
              ),
              SizedBox(
                height: 22,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(Third_Screen({
                          'name': shoes[index],
                          'desc': describe[index],
                          'image': images[index],
                          'price': Price[index]
                        }));
                      },
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Expanded(flex: 25, child: Container()),
                              Expanded(
                                flex: 75,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                  padding: EdgeInsets.only(right: 20),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: colors[index],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomRight),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                            color: colors[index][0],
                                            blurRadius: 3,
                                            offset: Offset(3, 3))
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 22,
                                      ),
                                      Text(
                                        shoes[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        Price[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        describe[index],
                                        style: TextStyle(
                                            color: Colors.pinkAccent.shade100,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 65,
                                child: Hero(
                                  tag: images[index],
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    height: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.fitWidth)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 35,
                                child: Container(),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })),
            ],
          ),
        ));
  }
}
