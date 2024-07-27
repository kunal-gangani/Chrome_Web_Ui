import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/globals/routes.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({super.key});

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.turnOnSync);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/views/SetProfileImage/assets/image.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            right: 550.w,
            child: Container(
              height: 500.h,
              width: 475.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkgVcooo6WLZCwcJc90g0eqm_5ygSz4NxFzQ&s",
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "2-Step Verification",
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "To help keep your account safe, Google wants to",
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "make sure It's really you trying to sign in",
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 30.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                        ),
                        Text(
                          "thekunalgangani@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 125.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "lib/views/TwoStepVerification/assets/phone.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      const Text(
                        "Check your Samsung S21 5G",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      const Text(
                        "Google sent a notification to your Samsung S21 5G. Tap",
                      ),
                      const SizedBox(),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      const Text(
                        "Yes on the notification to verify it's you",
                      ),
                      const SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      const Text("Remember this device"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.w,
                      ),
                      const Text(
                        "Resend it",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
