import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piltovr_assignment/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade500,
                Colors.grey.shade600,
                Colors.grey.shade700,
                const Color.fromARGB(255, 96, 94, 94),
                const Color.fromARGB(255, 85, 85, 85),
                Colors.grey.shade700,
                Colors.grey.shade600,
                Colors.grey.shade500,
                Colors.grey.shade600,
                Colors.grey.shade700,
                Colors.grey.shade600,
                Colors.grey.shade700,
                Colors.grey.shade800,
              ],
            ),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: 50,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: white),
                  width: 375,
                  height: 400,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  width: 375,
                  height: 195,
                  child: Image.asset(
                    "assets/images/team.png",
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Founder",
                            style: googleTextStyle(
                                30, FontWeight.w600, Colors.black),
                          ),
                          Text(
                            " Meetup",
                            style: googleTextStyle(
                                30, FontWeight.w600, Colors.brown),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 340,
                        child: Text(
                          "Inviting you all for a Fireside Chat on navigating startup challenges and government policies that benefit the ecosystem!",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(
                              11, FontWeight.w500, Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '''
Date: 23rd April
Time: 5PM onwards
Location: WeWork Prestige Central, Bengaluru
''',
                        overflow: TextOverflow.clip,
                        style:
                            googleTextStyle(11, FontWeight.w700, Colors.black),
                      ),
                      Image.asset(
                        scale: 4,
                        "assets/images/wework.png",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: white),
                      child: Image.asset(
                        scale: 5,
                        "assets/images/logo.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "WeWork Labs Event Calendar",
                      overflow: TextOverflow.clip,
                      style: googleTextStyle(
                          14, FontWeight.w500, textColorGrey.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Icon(
                      size: 20,
                      Icons.chevron_right_sharp,
                      color: textColorGrey,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 350,
                child: Text(
                  '''Founders Meetup | How can
governments help?''',
                  overflow: TextOverflow.clip,
                  style: googleTextStyle(21, FontWeight.w600, white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                child: Text(
                  '''
Tue, 23 Apr, 5:00 PM - 8:00 PM
''',
                  overflow: TextOverflow.clip,
                  style: googleTextStyle(16.5, FontWeight.w500, textColorGrey),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: textColorGrey.withOpacity(0.35)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          size: 20,
                          Icons.ios_share_rounded,
                          color: white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Share",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(15, FontWeight.w600, white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 155,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: textColorGrey.withOpacity(0.35)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          size: 22,
                          Icons.explore_outlined,
                          color: white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Open in Safari",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(15, FontWeight.w600, white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: textColorGrey.withOpacity(0.35)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 22,
                          Icons.more_horiz,
                          color: white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Location",
                overflow: TextOverflow.clip,
                style: googleTextStyle(15, FontWeight.w500, textColorGrey),
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: white.withOpacity(0.4),
                thickness: 0.3,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register to See Location",
                        overflow: TextOverflow.clip,
                        style: googleTextStyle(16, FontWeight.w600, white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bengaluru, Karnataka",
                        overflow: TextOverflow.clip,
                        style: googleTextStyle(
                            13.5, FontWeight.w500, textColorGrey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: Icon(
                            Icons.wb_sunny_outlined,
                            color: textColorGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "35°",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(
                              15, FontWeight.w500, textColorGrey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hosted By",
                    overflow: TextOverflow.clip,
                    style: googleTextStyle(15, FontWeight.w500, textColorGrey),
                  ),
                  Text(
                    "Contact",
                    overflow: TextOverflow.clip,
                    style: googleTextStyle(15, FontWeight.w500, textColorGrey),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: white.withOpacity(0.4),
                thickness: 0.3,
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/photo.jpg'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Mohini Kumar",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(15, FontWeight.w500, white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/photo1.jpg'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Karishma Chandwani",
                          overflow: TextOverflow.clip,
                          style: googleTextStyle(15, FontWeight.w500, white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                "About Event",
                overflow: TextOverflow.clip,
                style: googleTextStyle(15, FontWeight.w500, textColorGrey),
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: white.withOpacity(0.4),
                thickness: 0.3,
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: width,
                child: Text('''
Join us for the invite-only Founder Meetup in Bangalore on 23rd April 23rd from 5 PM to 8 PM. 

We aim to create a community of founders to grow and find support from like-minded peers, and indulge in regular deep dives and problem-solving sessions, thereby creating the ideal environment for expanding your network.''',
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        height: 1.5,
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45), color: white),
                  child: Text(
                    "Sign in to Register",
                    overflow: TextOverflow.clip,
                    style: googleTextStyle(16, FontWeight.w600, Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
