import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: const Icon(
          Icons.menu_outlined,
          size: 40,
          color: Colors.white,
        ),
        actions: const [
          CircleAvatar(
            child: Icon(
              Icons.insert_emoticon,
              size: 40,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Konstantin',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
            ),
            const Text(
              "Time to Home",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 370,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)),
              child: const Padding(
                padding:  EdgeInsets.all(20.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile App Dezing",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "Mike and Anita",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(height: 10,),
                    Row(children: [
                      CircleAvatar(),
                      CircleAvatar(),
                      SizedBox(width:200 ,),
                      Text("Now",style:TextStyle(fontSize: 10,color:Colors.white),
                      )
                    ],)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
