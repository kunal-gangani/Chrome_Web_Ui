import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/globals/routes.dart';
import 'package:web_ui/views/TurnOnSync/utils/row_text.dart';

class TurnOnSync extends StatefulWidget {
  const TurnOnSync({super.key});

  @override
  State<TurnOnSync> createState() => _TurnOnSyncState();
}

class _TurnOnSyncState extends State<TurnOnSync> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "lib/views/SetProfileImage/assets/image.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Centered content
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100.h,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://lh3.googleusercontent.com/a/AGNmyxbkNcQzZkzxhS7NIibNUdCz2r1hy3VHA3b1lyX7=s96-c",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Turn on Sync",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Back up your stuffs and use it on any device",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 225.h,
                width: 500.w,
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 13,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffF8F9FA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    RowText(
                      icon: Icons.star_border,
                      text: "Bookmarks",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RowText(
                      icon: Icons.paste,
                      text: "Autofill",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RowText(
                      icon: Icons.extension,
                      text: "Extension",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RowText(
                      icon: Icons.work_history,
                      text: "History and more",
                    ),
                  ],
                ),
              ),
              const Text(
                "You can always choose what to sync in settings. Google may personalize Search and other",
              ),
              const Text(
                "services based on your search",
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text("Settings"),
                  ),
                  SizedBox(
                    width: 1100.w,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homePage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "Yes I'm",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homePage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text("No Thanks"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
