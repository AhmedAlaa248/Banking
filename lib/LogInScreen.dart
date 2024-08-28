import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/login_bg.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 215,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.075, top: 30.0),
                child: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.white, size: 24),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: screenWidth * 0.075, top: 100.0),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Expanded(
                      child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: screenWidth * 0.075, top: 30.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Hello there sign in to continue",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: (screenHeight - 150) / 4),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: SizedBox(
                                width: screenWidth * 0.5,
                                child: TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    labelText: 'Username',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Set the corner radius
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: SizedBox(
                                width: screenWidth * 0.5,
                                child: TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                    labelText: 'Password',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Set the corner radius
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: Size(
                                      screenWidth * 0.15, screenHeight * 0.07),
                                ),
                                child: const Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                          ],
                        ))
                  ])),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        InkWell(
                          onTap: () {
                            // Handle click event here
                          },
                          child: const Text(
                            'Clickable Text',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
