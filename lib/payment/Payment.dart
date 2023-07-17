import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/Rate/Rate.dart';

import 'cart.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
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
                Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  iconSize: 60.sp,
                  onPressed: () {},
                  icon: Image.asset(
                    'images/More.png',
                  ),
                ),
              ],
            ),
            const cart(),
            SizedBox(
              height: 20.h,
            ),
            const cart(),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: SizedBox(
                width: 320.w,
                height: 60.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Group22.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 5,
              height: 5.h,
              color: const Color(0xffF2F5F8),
              endIndent: 10,
              indent: 10,
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item Total',
                        style: TextStyle(
                          color: const Color(0xff667C8A),
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        '\$62.85',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: TextStyle(
                          color: const Color(0xff667C8A),
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        '\$2.25',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: TextStyle(
                          color: const Color(0xff667C8A),
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        '\$0.25',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total :',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        '\$65.35',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 340.w,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffC8161D),
                  shadowColor: const Color(0xffC8161D),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Rates(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/payment.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
