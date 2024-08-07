import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_ui/views/HomePage/utils/icon_rows.dart';

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
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 8,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
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
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  hintText: "Search Google or Type text",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  suffix: const Row(
                    children: [
                      Icon(
                        Icons.mic,
                      ),
                      Icon(
                        Icons.camera_alt,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconWidgets(
                      image:
                          "data:image/jpeg;base64,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",
                      text: "Sheets",
                    ),
                    IconWidgets(
                      image:
                          "data:image/png;base64,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",
                      text: "Home",
                    ),
                    IconWidgets(
                      image:
                          "data:image/jpeg;base64,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",
                      text: "Notepad",
                    ),
                    IconWidgets(
                      image:
                          "data:image/png;base64,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",
                      text: "Gmail",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconWidgets(
                      image:
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAe1BMVEX/////uQH/lQP/tgD/3Jz/0Hb/xFH/8NX/tAD/9+n/5r3/y3D/897/w1T/sgD//Pf/58L/jgH/+vH/yWf/1ZH/rQH/9OP/5s//oU//69r/8eT/uyj/5LX/0YH/uFX/4sr/mUH/n0X/4Kf/p1v/rGP/sm7/hwD/vz7/wDPp4n4SAAACEUlEQVR4nO3d226CQBCAYWFtxVqhgNAT9nx6/yfs9nDRtEhwd8yM9f+vjeELYcINs5MJEREREREREREREREREQlUnW5fq33RvRXdul5u3fHNrfaF9zSvr11ASXN3rn3pf6oSlwTVlPY0oZakSct7Y5ppHmjxGHOaYMsHJi0vLGlmcRhbmodIjCnNNIvEWNLEY/wUuNRWfCeA8ffmSpvxlQTGjEYEY0UjgzGiEcKk5aOBKSCFScsnfY0YxoJGDuM12s+NIEZfI4nxM636Pxg/01Q1shhljTBGVyON8Rq9KSCOSctnNY08RlGzA4yeZhcYr9GZAjvB+HcBFU0Mptzcy2OxXxiXD9Ss9wsz3NE/wjgwYMCAAQMGDBgwYMDYx7jFSWCrzBwmW4X+z1kORjYwPYGRbgOmGJ19TNGtpqNadZV5TFXn2ajyurWPWYx8MXBgwIABAwYMGDBgwIABAwYMmIPAZPuAqUd+VrsPd2Yyb9v5iPyvCvuYrQMjHZiewEj3C7MeNcR66uxhktdFYEtnD5OErAb52g9iECMVGDBgwIABAwYMGDBgwIABAwYMGDBgwIA5HEzE7tnBMo2FIBFbgQfLTxQwEfuaB2s0LBGbtIfKNR4Z31vojvOBXKJjmVTyGvc2V8KEnguwueta8TCHzxMbjoVa1utOY+nUj9qZWDaP2CAiIiIiIiIiIiIiIqLD6B2A12N+h8CO3gAAAABJRU5ErkJggg==",
                      text: "Slides",
                    ),
                    IconWidgets(
                      image:
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAbFBMVEUAAAD////Q0NDa2tqOjo6tra0GBgYLCwv09PT6+vrs7Ozp6enx8fHIyMiUlJSHh4e/v785OTlYWFgkJCSmpqbh4eFfX19NTU0bGxspKSlycnJHR0dpaWkwMDB5eXlSUlJAQECenp62trYUFBRQouLHAAAJJUlEQVR4nM1caYOyIBD2WN888iq7rdT+/398W2OA4VAoW51Pu6H4MAxzMeC4lJI0229Xzgy02u6zNGFIHPgjzss58DAq81gAFWbzInpRFvKg4sPceF50iBko/zg3GqCjD6DixWB6oopfoMKFzN2LDmEPahEyzij7BRXPjUKk+AkqnxuESLnrJDPrTJnKxEnnxiBT6ixMzH8pc/ZzQ5Bp72znhiDT1pnFVxmmBUL6mE6HOq+KNC2q/HxYhm7JCz9i7mK0S7PHvIBW+8JVkF/PuHD2qQpSD+s8E6SLFlIP6z4Hptt6CNNTuto/h/QYZNOLvD9eiVsRU5T4fhKKU/inqK781EVeS+Xn0qY8snDzh5h87sOB8OFNyzUm91uVer9UtPV39deOcSlQtbecNuUp6c6nb2EKOEaon7j7alSuu6u+E8nl9AvdP+1Dng6V61bN9JiOVJKVU9dTWYgLkad4+iiFWjutC71tBxD15DXTYtpAx4XuiXM8hOdF63pSUCAsvsYR2IsynnhFF3SpL0zoz4SYDtDpRdm8LZA2iLz8cH0tt1OzrxALJwygOtJlp2ytEDvW0jo7p99AVZKcZKxi1HnHQ4oClaLccM9MIlePWwASpWDUBtvoVOdPtfSRUC0CNog2vO6RzH/ZIWFKBrhQU9HyP8R0RipaShxlSIbDH72qd2hO81OxugtWQ3Aq64RvjILrSHcU1fqD9GEmWn0UFjQ4okkN5LeGh7UaeIxKyeSvORfqWqGm3c2ozwyeH2Oqhg47EZO7Y11t8MxVpo4cDFSt78boLkF6rhr66ROPKSpkX+mSZ0qXGLpVKrwxOvDeeEWkx6eLK+dafYUwVc/Xo1RlJkGrveHGnJiIh8+pCURQP7Q5kYVplcOIKlm5g7fhWWN6MFXQR7x6UJUssRdOjyjkHybeGlRHe636/3WgCgUkIfUhTS6Mxza8Z0JOVK8alMpjayVPL+rwytzgrk1pS5UBKEs1KFksNHmGjBetK+ndUn/SpVXBL2agGuovRJmgWrksNMirpaTDymNjMQHVUBz9hJXYo/GY1iICa7fNCJIYMVkwAEXVgOsTtpwFc/3Ane1sLM0WLAGn3kZBMX+BVwLYsYmyfwiUTWpmDwPm2DsC6sQ0U4vUZYn1w0s9vAMKRIO3A4OgtizHkEoa/II9sl9nGWTKJudBZCPifxsClXOik8gW7XFGaiIM/hFQ3qCXiulK3kYJAz2os+B0KdLDqxYFYAkZhI1KuJF3Uec6UCWNQUP4cFQ0Up+NKuuuT5PIRL6P/R01KJ+5y2nJ9FLUyhqollNENr4LuE7IYA24Lv2M9JppT4UruUny8rghreVaOcRHMiS8jzsIKqQ5ix8q0568u3msUBiyNsdEVSee8QFQKLC6BvTDXSP13fCWx8YenwioCv2qB5WKOWL64VCx88CvVQt/yg7UTrE/VFPHJ1G0Mu8haYxB2Uyfapk96cEWpSKdeGaNxqBsBF3bK1v/USctMpZRME/qFaphvA3qOUuS23uBptjYJJPvJwbKcxgUtS2SaNGMgnGYDOsKBQXvgGpbyq1CYAmVdtNgH5iLFjSAwtCHQf0425QKdYVhwQI1tn8w4QpQrIbICBS2PPwDMIHGLjFYdH7+qBTAiA1BPZ0OutaQCoePmO6Dn8nzSClQ3yO+2YFySipA/Cj3KqQDBMEiHgUz8r1LYA7qafLIq8hIAAMNQdFtvR36lY34N8VjA8pRGYmWdGaapnpQAcK/c6HJa7kbglqpQIGUGmt1mnMRExgsvAw/BQVzaqwUSrpipMxyxvuPn4ACU2TuVlFvSS51vnI7DB+BAhtrnlFgFlVWJA1tjNTFScR1GQEFRsK8jqhhs1TJrUy0doq0GTh5I6DIYraJkzdsklRp+4y6AHp3eHpQDh8+po3UXNIVqgscpp8+x0GRdhTI4rinoqUKscZBEY5aCDrNKAAluSTT/wTLw7kEBoL+ID/aRFr8jgIZkizTj1Ydtmf+OKhLrGLfMHWuTIVsp5QJjtJET4EvYrb59SIiMAlOW7ZytaoyFWQACqy+xeJbEVCdsLkfnmV1qUiaGYAiHLbJKIBP9eznLqSepTk8sQcCsr7HQYHMKlSzlpANFwpGcGhyaunkplRhjYI6Qpc2pefYWfyH95JjLtC5scQBtzpHQQGjrFRnucP9rAJcfUDMNOPhGuXlxkAdoTerahxgLwthN0LquXmqKebFBA16fQwU2DCUgR4nSHNwOmCPN7orLuHZqN7Wg6LevuWWLRkLChZPmauiWNZ/w6Ag/+zuLGuy4fvYMXl0Us1krMjX1eshUC1913ZvFLYvRQbXggJXmJ4r4bIGFEvl2ZcmAIelhhsnWrIm5Qo7lKC4QtDU/oQFvCxXypwg9bzO5W65bLkEqnIenNGK3qiRBfWm8nf6Ary1wkKgyaUzD6CKlmtdv1PBAf6OglVP2vzkcqdHVCyYUE4cBTnUdztK4FGZVoU98IZCwtZtKW6APEW1eQsTc4jN6gdugmrlFNxeKt313ixUGsgoKEg4HoJ3124CpOiD4rc7hCajx5SvwWCxIC5RcL2PTs5SqzKC6gdNTyzxAW3Xpp8erKGrJh4qlMRufCcl7C+sMSzuH59JuzAW6M7CHITKU0V1GfgpXjDN6aOafW6nKmY7YWFSFgtCydp0R2Z5Z0WShqbCm/vqIAAYZRN1WqBy46puTv1OyLE85B4u9i7UzhEtxZrytDrewXZDP+2CrvBEJe1rwhJaimVfgjdE9ch5sJ6FWhGm62DiI0cX7VkYoFbrhbTwyNtluVrKh05UROK+GUe0Mif8wkmeS6UHpReWFUvdfOdY/7GSK4kBlWZdcdXFE6oDTKdzJ/tFr7lRWX0+ppYd/SlpVbdFfz4urW53HmIrREubgGv03/ae7GmDThmmbQMN9wrp1fUfYlIU0Ye/RzXFcFVZav1NVAPn5oCKvz/GrTv6SHlnk2edjPRHH3s2fXxq500S08OcNM14bcVWTHoQLu1nvo3hkRU7/poCv1jGdTHl4QwXOtSHr53vnZEWeAvHaplXqCzysplFXsuzyAuMFnnV0yIvxVrm9WGLvGhtmVfSLfLyvmVec7jMCyGXeXWmu8hLRn9pOdex/gf50HAOagC0+gAAAABJRU5ErkJggg==",
                      text: "ChatGPT",
                    ),
                    IconWidgets(
                      image:
                          "data:image/jpeg;base64,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",
                      text: "Sheets",
                    ),
                    IconWidgets(
                      image:
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAP1BMVEX///8AAAA4ODj29vYSEhL7+/va2tq2trZubm5FRUXe3t5ycnJjY2PW1tZ3d3fp6elMTEyTk5OMjIxoaGgJCQmW6EyxAAABi0lEQVR4nO3c7YqDMBCF4USj8bNa2/u/1q2LsFQNxUWcw+57fkt4oDEmzTDOnZEyVnUIdRXLU4Y7I00b/JLQNtaa7xSTf8tUWItepodf5WGv6tYm7ztr031r8v5ua+r3TN73pqjbPupmaRr2Td4PhqiYQkVD1M6rZ/8CjinUaGcqshQqs1tA8zQqBwUKFChQoECBAgUKFChQoECBAgUKFChQoECBAgXqD6OK/FiGNGo4ONT+/eAQuzE7mmcK9Tw81NjF9W14n7jLvza3t3qG3ToMi/zUfhTJS/Pr0y2Ta1vXY5mlpmj6/OSVmWZTY61YZ65Va60R67TOleHzY9cmlOkaGrtEV1kTtqlcbU3YpnZyU+o1qTRRkj+f5ESXXBIkF0/Jz4zmB1ly66K5yZPcDmseHESPWJqHUdFj+2/yf/91AQUKFChQoECBAgUKFChQoECBAgUKFChQoECBAgXqUCTb8kg2MNJs9STZFEuyfZhkozXNlnSSzfs02xxqNoSUbJ3pJJuMzjm5HesX3hUnLeE92aEAAAAASUVORK5CYII=",
                      text: "Add",
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
