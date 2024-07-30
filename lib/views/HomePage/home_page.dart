import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff333C4D,
      ),
      appBar: AppBar(
        backgroundColor: const Color(
          0xff333C4D,
        ),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.replay_outlined,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 8,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            const Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 2.h,
            ),
            const Icon(
              Icons.brush,
              color: Colors.orange,
            ),
            SizedBox(
              width: 2.h,
            ),
            const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 2.h,
            ),
            const Icon(
              Icons.extension,
              color: Colors.white,
            ),
            SizedBox(
              width: 2.h,
            ),
            const SizedBox(
              height: 24.0,
              child: VerticalDivider(
                width: 3,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/a/AGNmyxbkNcQzZkzxhS7NIibNUdCz2r1hy3VHA3b1lyX7=s96-c",
              ),
            ),
            const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1IC9su3qtDrlgHe_rkQHZ9DhTbJZXCo9oQg&s",
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: 600.w,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  hintText: "Search Google or Type text",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
