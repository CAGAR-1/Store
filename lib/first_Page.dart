import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:shoe_store/secod_page.dart';

class First_Page extends StatelessWidget {
  const First_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'images/shoebackground.jpeg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.2),
            colorBlendMode: BlendMode.darken,
          )),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  "Destiny",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 180,
              ),
              Text(
                "between saying and doing many pair of shoe were worn",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 22),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1)),
                child: InkWell(
                  onTap: () {
                    Get.to(second_screen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "have a look",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
     ) );
  }
}
