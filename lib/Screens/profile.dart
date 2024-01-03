import 'package:flutter/material.dart';

import '../styles.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.black,
        title: Text("Profile",style: headers,)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/signup.png'),
            ),
            SizedBox(height: 20),
            Text('Saravanan', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 10),
            Text('saravanan@yahoo.com',style: TextStyle(fontSize: 16,color: Colors.grey,),),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder:(BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.black
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Edit Profile",style: pageHeaders,),

                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "User Name",
                                  hintText: "Enter your name"
                                ),
                              ),

                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Email Address",
                                    hintText: "Enter your email address"
                                ),
                              ),

                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Password",
                                    hintText: "Enter your password"
                                ),
                              ),

                              ElevatedButton(
                                  onPressed: (){},
                                  child: Text("Save changes ")
                              )
                            ],
                          ),
                        ),
                      );
                    }
                );
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
