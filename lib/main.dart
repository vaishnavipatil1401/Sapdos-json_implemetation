import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_screen/domain/usecases/get_doctors.dart';
import 'package:patient_screen/presentation/pages/home_screen.dart';

void main() {
  final GetDoctors getDoctors = GetDoctors();

  runApp(MyApp(getDoctors: getDoctors));
}

class MyApp extends StatelessWidget {
  final GetDoctors getDoctors;

  MyApp({required this.getDoctors});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GetDoctors>.value(value: getDoctors),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
