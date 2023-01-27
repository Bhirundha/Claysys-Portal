import 'package:claysys_portal/screens/homepage.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

Container InputField(String name,IconData  icon) {
  return  Container(
    padding: const EdgeInsets.only(left: 20, right: 20),
    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 18),
    child: TextFormField(
      decoration:  InputDecoration(
        filled: true,
        border: InputBorder.none,
        fillColor: const Color(0xFFe3eaf0),
        labelText: name,
        labelStyle: const TextStyle(fontWeight:FontWeight.w500, fontSize: 15,color: Colors.black54),
        prefixIcon: Icon(
          icon,
          color: Colors.black54,
          size: 30,
        ),
      ),
    ),
  );
}



class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf4f8fa),
        body: SingleChildScrollView(
          child:Center(
              child : Form(
                key: formkey,
                child:  Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top:190,bottom:40),
                        alignment: Alignment.center,
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                    InputField('EMPLOYEE ID',Icons.person_outline),
                    InputField('PASSWORD',Icons.lock_outline),
                    Container(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        margin: const EdgeInsets.only(left: 20,right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF26b860),
                              fixedSize: const Size(400, 60)),
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> const HomePage()),
                            );
                          },
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: const Text(
                        'Forgot Username or Password?',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 135),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Dont have an account',
                            style:
                            TextStyle(fontSize: 15, color: Colors.black38,fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text(
                              'Register Now',
                              style: TextStyle(fontSize: 15, color: Colors.blue,fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {

                            },
                          )
                        ],
                      ),
                    )

                  ],
                ),
              )


          ),
        )


    );
  }
}
