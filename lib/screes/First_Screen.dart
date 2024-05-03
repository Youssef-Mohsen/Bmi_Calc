
import 'package:bmi_calc/cubits/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/add_states.dart';
import 'Third_Screen.dart';
import 'Second_Screen.dart';



class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = new AppCubit();

    return BlocBuilder<AppCubit,AppStates>(
        builder: (BuildContext context, dynamic state) {
          AppCubit cubit = BlocProvider.of<AppCubit>(context);
          return Scaffold(
            backgroundColor: Colors.grey[900],

            appBar: AppBar(title:
            const Text(
              'BMI CALCULATOR',

              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),

            ),
              centerTitle: true,
              backgroundColor: Colors.grey[850],
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FloatingActionButton
                          (
                            backgroundColor: Colors.pink,
                            child: Icon(CupertinoIcons.profile_circled),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ThirdScreen()));
                            }
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            cubit.changegender(true);
                            cubit.gender = 'Male';
                          },

                          child: Expanded(
                            child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: cubit.male ? Colors.pink : Colors
                                    .grey[900],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  Text('Male', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        InkWell(
                          onTap: () {
                            cubit.changegender(false);

                            cubit.gender = 'Female';
                          },
                          child: Expanded(
                            child: Container
                              (
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: cubit.male ? Colors.grey[900] : Colors
                                    .pink,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.female,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  Text('Female', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Height', style: TextStyle(
                                      color: Colors.white, fontSize: 35.0)
                                    ,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(cubit.height.toInt().toString(),
                                    style: TextStyle(color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,),),
                                  Text(' cm', style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0,),

                              Slider(
                                min: 120,
                                max: 220,
                                value: cubit.height,
                                activeColor: Colors.pink,
                                onChanged: (value) {
                                  cubit.height = value;
                                  cubit.changeheight(cubit.height);
                                },
                              ),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container
                          (
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [

                              Text('Weight', style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    cubit.weight.toString(), style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Text(' KG', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: Colors.pink,

                                      child: Icon(CupertinoIcons.minus),
                                      onPressed: () {
                                        cubit.changeweight(cubit.weight - 1);
                                        if (cubit.weight < 1) {
                                          cubit.weight = 1;
                                        }
                                      }),
                                  SizedBox(width: 20.0,),
                                  FloatingActionButton(
                                      backgroundColor: Colors.pink,

                                      child: Icon(CupertinoIcons.add),
                                      onPressed: () {
                                        cubit.changeweight(cubit.weight + 1);
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Expanded(
                        child: Container
                          (
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('Age', style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),),
                              SizedBox(height: 10.0,),
                              Text(cubit.age.toString(), style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      backgroundColor: Colors.pink,

                                      child: Icon(CupertinoIcons.minus),
                                      onPressed: () {
                                        cubit.changeage(cubit.age - 1);
                                        if (cubit.age < 1) {
                                          cubit.age = 1;
                                        }
                                      }),
                                  SizedBox(width: 20.0,),
                                  FloatingActionButton(
                                      backgroundColor: Colors.pink,

                                      child: Icon(CupertinoIcons.add),
                                      onPressed: () {
                                        cubit.changeage(cubit.age + 1);
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('BMI: ',
                          style: TextStyle(color: Colors.white, fontSize: 35.0),
                        ),
                        SizedBox(width: 10.0,),
                        Text(cubit.bmi.toInt().toString(), style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Status: ',
                          style: TextStyle(color: Colors.white, fontSize: 35.0),
                        ),
                        Text(cubit.bmi3, style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,

                        ),),
                      ],
                    ),

                  ],),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {

                          },

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: MaterialButton(
                                    color: Colors.pink,
                                    child: Text('Calculate', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                    ),),
                                    minWidth: 290,
                                    height: 50.0,
                                    elevation: 0.0,
                                    onPressed: () {
                                      cubit.bmi = cubit.weight /
                                          ((cubit.height * cubit.height) /
                                              10000);
                                      if (cubit.bmi >= 18 && cubit.bmi <= 25) {
                                        cubit.bmi3 = 'Good';
                                      }
                                      else {
                                        cubit.bmi3 = 'Bad';
                                      }
                                      cubit.changebmi(cubit.bmi);
                                    }),
                              ),
                            ],
                          ),


                        ),


                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: FloatingActionButton
                              (
                                backgroundColor: Colors.pink,
                                child: Icon(Icons.calculate_outlined),
                                onPressed: () {
                                  cubit.changebmi(cubit.bmi);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SecondScreen()));
                                }),
                          ),
                        ),

                      ],
                    ),
                  ),
                ]
            ),
          );
        });
  }
}

