

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('My ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/joe.jpg'),
                  radius: 80.0,
                ),
              ),//MY IMAGE
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),// SPACE
              Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//NAME
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                'Youssef Mohsen',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 18.0
                ),
              ),//YOUSSEF MOHSEN
              SizedBox(
                height: 30.0,
              ),//BIG SPACE
              Text(
                'LEVEL: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//LEVEL
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                '2',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ),//1
              SizedBox(
                height: 30.0,
              ),//BIG SPACE
              Text(
                'ID: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//ID
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                '2022170524',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ),//MY ID
              SizedBox(
                height: 30.0,
              ),//BIG SPACE
              Text(
                'GPA: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//GPA
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                'B+ = 3.33',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ),// MY GPA
              SizedBox(
                height: 40.0,
              ),// BIG SPACE
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'youssefmohsen7110@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  )
                ],
              )//MAIL ICON AND MY EMAIL
            ],
          ),
        )

    );
  }
}
