import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/globals/routes.dart';
import 'package:web_ui/globals/variables.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController passCtrl = TextEditingController();
  bool isChecked = false;
  String password = '';

  List<String> items = ['English', 'Spanish', 'Hindi', 'German', 'French'];
  String? selectedItem;

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
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 19.sp,
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
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: passCtrl,
                      obscureText: isChecked,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black38,
                          ),
                        ),
                        labelText: "Enter your Password",
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
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text('Show Password'),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            password = passCtrl.text.toString();
                            Navigator.pushNamed(
                              context,
                              Routes.twoStepVerification,
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
