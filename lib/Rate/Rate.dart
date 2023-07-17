import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rates extends StatelessWidget {
  const Rates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC8161D),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Rate your service',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Text(
                '''How was 
your food?''',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 28.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/dislike.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    'images/Group25.png',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/like.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120.h,
              ),
              Text(
                '''How was your 
    delivery?''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/dislike.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    'images/Ellipse3.png',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 40.w,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/like.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
