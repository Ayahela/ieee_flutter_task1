import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homescreen());
  }
}

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Profile Card Challenge"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 255,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 25,
                offset: Offset(0, 0),
              ), ],
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 90,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/blue-profile-icon-free-png.webp",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                "Flutter Devoloper",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "Writing Code & Building Apps",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 30,
                children: [
                  Container(height: 40,width: 40,
                    decoration: BoxDecoration(
                      color:  Colors.blue[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.facebook, color: Colors.blue),
                  ),
                  Container(height: 40,width: 40,
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.phone, color: Colors.green),
                  ),
                  Container(height: 40,width: 40,
                    decoration: BoxDecoration(
                      color:  Colors.red[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.email, color: Colors.red),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
