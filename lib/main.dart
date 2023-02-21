import 'dart:ui';

import 'package:demoflutter_application_1/assets/comman.dart';
import 'package:demoflutter_application_1/assets/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Forgotpassword.dart';
import 'assets/Register.dart';
import 'dashboard.dart';
import 'package:postgres/postgres.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'demoproject1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
final Formkey = GlobalKey<FormState>();
  bool isChecked = false;
 final userEmailcontroller = TextEditingController();
 final userpasswordcontroller = TextEditingController();
bool passwordVisible=false;  


  //  int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Hello'),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: Formkey,
            child: Column(
              children: <Widget>[
                Image.asset('lib/assets/xyz.jpg',
                    alignment: Alignment.topCenter, width: 200, height: 300),
          
                Padding(
                  // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 25,
                  ),
                  child: TextFormField(
                   controller: userEmailcontroller,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                    //  textAlign: TextAlign.center,
                    decoration: InputDecoration(
                 
                        border: OutlineInputBorder(),
                       
                        labelText: 'Email',
                      
                        prefixIcon: Icon(Icons.email),
                         hintText: 'Enter valid email id as abc@gmail.com'),
                          
                  ), //keyboardType: TextInputType.emailAddress,
                
                ),
          
                Padding(
                  // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 25,
                  ),
                  child: TextFormField(
                    obscureText: passwordVisible,
                     controller: userpasswordcontroller,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid password';
                    }
                    return null;
                  },
                 decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'Password',
                     prefixIcon: Icon(Icons.lock),
                     helperStyle:TextStyle(color:Colors.green),
                   suffixIcon: IconButton(
                     icon: Icon(passwordVisible
                         ? Icons.visibility
                         : Icons.visibility_off),
                     onPressed: () {
                      
                       setState(
                         () {
                           passwordVisible = !passwordVisible;
                         },
                       );
                     },
                   ),
                   alignLabelWithHint: false,
                   filled: true,
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
               
                     
                     
                   ),
              ),

            Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(

                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(fontSize: 17),
                            ),
                ],)]
                        ),
          
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (Formkey.currentState!.validate()) {
                          operation(userEmailcontroller.text, userpasswordcontroller.text );
                          
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                               
                                 builder: (context) => const MyDashboard(title: 'MyDashboard',)
                                ),
                           );
                        }
                      },
                  ),
                ),

             Row(
                  children: <Widget>[
                     
                    TextButton(
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgotpassword()));
                    },
          
          
          
                    ),
          
                  Spacer(),
          
          TextButton(
                      child: const Text(
                        'Register Here!',
                        style: TextStyle(fontSize: 20),
                      ),
                      // onPressed: () {
                      //   //signup screen
                      // },
                      onPressed: () {
               
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                    },
                     )
                  ],
                   mainAxisAlignment: MainAxisAlignment.center,
                
                               
),  
                        
              ],
            ),
          ),
        ),
      ),
    );
  }
}

