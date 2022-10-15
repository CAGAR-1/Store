import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Third_Screen extends StatefulWidget {
  Map details;
  Third_Screen(this.details);

  @override
  State<Third_Screen> createState() => _Third_ScreenState();
}

class _Third_ScreenState extends State<Third_Screen> {
  List size = ['40', '41', '42', '43', '44', '45', '46', '47'];
  var sizechoosen = '40';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
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
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              widget.details['name'],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "destiny " + widget.details['desc'],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Hero(
              tag: widget.details['image'],
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.details['image']),
                        fit: BoxFit.fitWidth)),
              )),
          Row(
            children: [
              Icon(
                Icons.water_rounded,
                color: Colors.blue,
              ),
              Text(
                '     waterProof',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.spa,
                color: Colors.blue,
              ),
              Text(
                '     Eco Material',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.local_laundry_service_rounded,
                color: Colors.purple,
              ),
              Text(
                '     Flexible',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Size",
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            child: ListView.builder(
                itemCount: size.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sizechoosen = size[index];
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                          decoration: BoxDecoration(
                            color: sizechoosen == size[index]
                                ? Colors.black.withOpacity(0.8)
                                : Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            size[index],
                            style: TextStyle(
                                fontSize: 20,
                                color: sizechoosen == size[index]
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        )),
                  );
                })),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Prices",
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "RS 4000",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Deliver Within 1-2 Days",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
