
import 'package:bmi_calc/cubits/add_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  bool male=true;
  double height =175.0;
  int weight =75;
  int age =20;
  double bmi=0.0;
  String bmi3 ='Good';
  String gender='Male';

  void changegender(bool male2){
    male = male2;
    emit(ChangegenderState());
  }
  void changeheight(double height2){
    height= height2;
    emit(ChangeHeightState());
  }
  void changeweight(int weight2){
    weight=weight2;
    emit(ChangeWeightState());
  }
  void changeage(int age2){
    age=age2;
    emit(ChangeAgeState());
  }
  void changebmi(double bmi2){
    bmi=bmi2;
    emit(ChangeBmiState());
  }

}