import 'package:flutter/material.dart';

//screens
import 'signup.dart';
import 'bottomNavigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //this is used to find the state of the form
  final _formKey = GlobalKey<FormState>();

  //email validation regex
  final emailRegEx = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  //password hide & show
  bool _isVisible = false;

  void updateStatus(){
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/coverImage.jpeg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.7)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(

                          children: [
                            Image.asset("assets/login.png",height:70,width: 70,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("LOGIN"),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Email *",
                          hintText: "Enter your Email Address",
                          contentPadding: EdgeInsets.all(10),

                        ),

                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email address';
                          }
                          if (!emailRegEx.hasMatch(value)) {
                            return 'Please enter valid email address';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: _isVisible ? false : true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Password *",
                          hintText: "Enter your Password",
                          contentPadding: EdgeInsets.all(10),
                          suffixIcon:IconButton(
                            onPressed: () => updateStatus(),
                            icon:Icon(_isVisible ? Icons.visibility: Icons.visibility_off),
                          ),
                        ),

                        validator: (value){
                          if (value == null || value.isEmpty){
                            return "Please enter your password";
                          }
                          return null;
                        },
                      ),
                      
                      
                      GestureDetector(
                        onTap: (){print("ForgetPassword");},
                          child: Text("Forget Password?")
                      ),
                      
                      
                      SizedBox(
                        width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              if(_formKey.currentState!.validate()){
                                print("validated !");
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigation(currentIndex: 0,)),);
                              }
                            },
                              child: Text("Login"),

                          )
                      ),

                      SizedBox(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()),);
                                }, child: Text("Signup"),)
                          ],
                        ),
                      )
                      

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
