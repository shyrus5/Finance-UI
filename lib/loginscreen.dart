
import 'package:finance_app_ui/colors.dart';
import 'package:finance_app_ui/home_screen.dart';
import 'package:flutter/material.dart';

// import 'home_screen.dart';



class LoginScreem extends StatefulWidget {
  const LoginScreem({super.key});

  @override
  State<LoginScreem> createState() => _LoginScreemState();
}

class _LoginScreemState extends State<LoginScreem> {
  final TextEditingController _email = TextEditingController(text: "asim.com");
  final TextEditingController _password =
      TextEditingController(text: "Deactivate");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("images/profile.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: grey.withOpacity(0.03),
                spreadRadius: 10,
                blurRadius: 3)
              ]
            ),
          child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 15,
                bottom: 5, 
                right: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xFF67727d)
                    ),
                  ),
                  TextField(
                    controller: _email,
                    cursorColor: black,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: black
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.email_outlined),
                      prefixIconColor: black,
                      hintText: "Email"
                    ),
                  ),
                ],
              )
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: grey.withOpacity(0.03),
                  spreadRadius: 10,
                  blurRadius: 3
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 15,
                bottom: 5, 
                right: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xFF67727d)
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    controller: _password,
                    cursorColor: black,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: black
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded
                      ),
                      prefixIconColor: black,
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined
                      ),
                      suffixIconColor: Colors.black,
                      hintText: "Password"
                    ),
                  ),
                ],
              )
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap: (){
             Navigator.push(
                context, MaterialPageRoute(
                  builder: (context)=> const HomeScreen()
                )
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(
                horizontal: 25
              ),
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(25)
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
