
import 'package:bmi_calc/cubits/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'First_Screen.dart';


class  SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit();
    return  Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text(' Inputs '),
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
                  backgroundImage: AssetImage('assets/body4.jpg'),
                  radius: 60.0,
                ),
              ),//MY IMAGE

              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Inputs',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),)
                ],),
              SizedBox(height: 30.0,),
              //ID
              Text(
                'Your Gender: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//GPA
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                cubit.gender,
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(height: 30.0,),
              Text(
                'Your Height: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//SMALL SPACE
              SizedBox(
                height: 10.0,
              ),//MY ID
              Row(
                children: [
                  Text(
                    cubit.height.toInt().toString(),
                    style: TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(' cm',style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                  ),),
                ],
              ),//BIG SPACE
              SizedBox(
                height: 30.0,
              ),//GPA
              Text(
                'Your Weight: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//SMALL SPACE
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    cubit.weight.toString(),
                    style: TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(' KG',style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                  ),)
                ],
              ),
              SizedBox(height: 30.0,),
              Text(
                'Your Age: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),//GPA
              SizedBox(
                height: 10.0,
              ),//SMALL SPACE
              Text(
                cubit.age.toString(),
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ),
              //BIG SPACE
              SizedBox(
                height: 30.0,
              ),//GPA


            ],
          ),
        )


    );
  }
}