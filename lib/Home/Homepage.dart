import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/Order/Order.dart';

import '../bottomnavbar/BottomNavbar.dart';
import '../class/classes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffE5E5E5,
      ),
      bottomNavigationBar: const BottomNavbar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/Group.png',
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Vector.png',
            ),
            const Text(
              ' Chicago,',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Text(
              'IL',
              style: TextStyle(
                color: Color(
                  0xff667C8A,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Image.asset(
            'images/Rectangle.png',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 190,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey!',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Let’s get your order',
                      style: TextStyle(
                        color: const Color(0xff667C8A),
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 350.w,
                height: 41.h,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff667C8A),
                      ),
                      hintText: 'Search our delicious burgers',
                      hintStyle: const TextStyle(
                        color: Color(0xff667C8A),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          //mainAxisSpacing: 200,
                          crossAxisSpacing: 50,
                          mainAxisExtent: 176,
                        ),
                        itemBuilder: (BuildContext context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            elevation: 10,
                            child: Container(
                              width: 95.w,
                              height: 176.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    imageslist[index],
                                  ),
                                  Text(
                                    textlist[index],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'images/next.png',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all >',
                      style: TextStyle(
                        color: Color(
                          0xffC8161D,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Order(),
                    ),
                  );
                },
                child: Container(
                  width: 340.w,
                  height: 296.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 300.w,
                        height: 161.h,
                        padding: const EdgeInsets.only(
                          bottom: 50,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffC8161D),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(
                              'images/burger.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chipotle Cheesy Chicken',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$ 20.95',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chicken Burger',
                              style: TextStyle(
                                color: const Color(
                                  0xff667C8A,
                                ),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
