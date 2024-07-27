import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/globals/routes.dart';
import 'package:web_ui/globals/variables.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  List<String> items = ['English', 'Spanish', 'Hindi', 'German', 'French'];
  String? selectedItem;

  TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: Container(
              height: 500.h,
              width: 400.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkgVcooo6WLZCwcJc90g0eqm_5ygSz4NxFzQ&s",
                      height: 100.h, 
                      width: 100.w, 
                      fit: BoxFit.cover, 
                    ),
                    Row(
                      children: [
                        Text(
                          "Sign in to Chrome",
                          style: TextStyle(
                            fontSize: 19.sp,
                          ),
                        ),
                        const SizedBox(),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Use your Google Assistant",
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                        const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black38,
                          ),
                        ),
                        labelText: "Email or Number",
                        hintText: "xyz@gmail.com",
                        labelStyle: TextStyle(
                          fontSize: 14.sp,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Forgot Email?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    const Text(
                      "Not your computer? Use Guest mode to log in privately.",
                    ),
                    const Row(
                      children: [
                        Text(
                          "Learn more about Guest Mode",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            emailAddress = emailCtrl.text.toString();
                            Navigator.pushNamed(
                              context,
                              Routes.setPassword,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 50.w,
              ),
              DropdownButton(
                hint: const Text(
                  'English (United States)',
                ),
                value: selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue;
                  });
                },
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                width: 15.w,
              ),
              const Text(
                "Help",
              ),
              SizedBox(
                width: 15.w,
              ),
              const Text(
                "Privacy",
              ),
              SizedBox(
                width: 15.w,
              ),
              const Text(
                "Terms",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
