import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/payment/Payment.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffE5E5E5,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 400.w,
              height: 400.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    170,
                  ),
                  bottomRight: Radius.circular(
                    170,
                  ),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          iconSize: 60.sp,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset(
                            'images/Back.png',
                          ),
                        ),
                        IconButton(
                          iconSize: 60.sp,
                          onPressed: () {},
                          icon: Image.asset(
                            'images/Like.png',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Chipotle Cheesy Chicken',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        '''A signature flame-grilled chicken patty topped with smoked beef''',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xff435D6B),
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(
                      'images/burger2.png',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/Group8.png'),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Image.asset('images/Group8.png'),
                        ),
                        Image.asset('images/Group8.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: Image.asset(
                    'images/Group10.png',
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  '2',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: Image.asset(
                    'images/Group11.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: const Color(0xff435D6B),
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '\$ 41.90',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Payment(),
                      ),
                    );
                  },
                  child: Container(
                    width: 171.w,
                    height: 64.h,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          10,
                        ),
                        bottomLeft: Radius.circular(
                          10,
                        ),
                      ),
                      color: Color(0xffC8161D),
                    ),
                    child: Image.asset(
                      'images/Group13.png',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
