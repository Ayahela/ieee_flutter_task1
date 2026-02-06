import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final filters = [
      'All',
      'Unread',
      'Groups',
      'Friends',
      'Collage',
      'Family',
      'Community',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xFF25D366),
      child: Icon(Icons.message,color: Colors.black,),),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              padding: EdgeInsets.all(5),
              itemBuilder: (BuildContext context, int index) {
                return OutlinedButton(onPressed: (){}, child: Text(
                filters[index],style: TextStyle(color: Colors.black),),style: OutlinedButton.styleFrom(side: BorderSide(
                  color: Colors.black,
                  width: 3,
                ),),);
              }, separatorBuilder: (_, __) => SizedBox(width: 8),
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                  title: Text('Ahmed Mohamed',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("السلام عليكم ازيك يا هندسة؟",style: TextStyle(fontSize: 7),),
                leading:  CircleAvatar(backgroundImage: AssetImage("assets/blue-profile-icon-free-png.webp"),backgroundColor: Colors.white,),
                trailing: Text("10:30 pm",style: TextStyle(fontSize: 7),),


              ),
            ),
          )






        ],

      ),
    );
  }
}


