import 'package:flutter/material.dart';

//screens
import 'bottomNavigation.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();


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
                            Image.asset("assets/signup.png",height:70,width: 70,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("SIGNUP"),
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
                        controller: password1,
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
                      TextFormField(
                        controller: password2,
                        obscureText: _isVisible ? false : true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: "Re-Enter Password *",
                          hintText: "Re-Enter your Password",
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
                          if ((password2.text) != (password1.text)){
                            return "Password mismatch";
                          }
                          return null;
                        },
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
                            child: Text("Signup"),

                          )
                      ),

                      SizedBox(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),);
                              } ,
                                child: Text(" Login")
                            )
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
