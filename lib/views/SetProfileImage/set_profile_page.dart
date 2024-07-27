import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/globals/routes.dart';

class SetProfilePage extends StatefulWidget {
  const SetProfilePage({super.key});

  @override
  State<SetProfilePage> createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/views/SetProfileImage/assets/image.png"),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            CircleAvatar(
              radius: 50.w,
              backgroundImage: const NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkgVcooo6WLZCwcJc90g0eqm_5ygSz4NxFzQ&s"),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Set up your new Chrome Profile",
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "To across your Chrome stuff across all your devices, sign in, then turn on sync",
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(235.w, 45.h),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.signInPage);
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(235.w, 45.h),
              ),
              onPressed: () {},
              child: const Text("Continue without an account"),
            ),
          ],
        ),
      ),
    );
  }
}
