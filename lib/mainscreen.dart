import 'package:flutter/material.dart';
import 'package:spotify/loginscreen.dart';
import 'package:spotify/signupfree.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: SizedBox(
            width: 300,
            height: 600,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.059,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>const Signupfree() ));
                    },
                    style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: const Color.fromRGBO(29, 185, 84, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      "Sign up free",
                      style: TextStyle(
                        fontSize: 17,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.white, width: 1.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Row(
                      children: const [CircleAvatar(backgroundImage: AssetImage('assets/images/mobilephone.png'),radius: 12,
                        backgroundColor: Colors.transparent,),
                        SizedBox(width: 10,),
                        Text(
                          "Continue with phone number",
                          style: TextStyle(
                            fontFamily: 'Spotify_bold',
                            fontSize: 17,fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      side: const BorderSide(color: Colors.white, width: 1.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: const [CircleAvatar(backgroundImage:
                              AssetImage('assets/images/google.png'),
                          radius: 11,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(width: 30,),
                        Text("Continue with Google",
                          style: TextStyle(
                            fontFamily: 'Spotify_bold',
                            fontSize: 17,
                              fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () {},

                    style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.white, width: 1.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Row(
                      children: const [
                        CircleAvatar(backgroundImage:AssetImage("assets/images/facebook.png"),radius: 12,),
                        SizedBox(width: 25,),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    child: TextButton(
                  onPressed: () {
Navigator.push(context, MaterialPageRoute(builder:(context)=>Loginscreen()));
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
