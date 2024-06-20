import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_screen/domain/repositories/appointment_repository.dart';
import 'package:patient_screen/domain/usecases/get_doctors.dart';
import 'package:patient_screen/presentation/blocs/appointment/appointment_bloc.dart';
import 'package:patient_screen/presentation/blocs/appointment/appointment_event.dart';
import 'package:patient_screen/presentation/pages/home_screen.dart';

void main() {
  final GetDoctors getDoctors = GetDoctors();
  final AppointmentRepository appointmentRepository = AppointmentRepository();

  runApp(MyApp(
    getDoctors: getDoctors,
    appointmentRepository: appointmentRepository,
  ));
}

class MyApp extends StatelessWidget {
  final GetDoctors getDoctors;
  final AppointmentRepository appointmentRepository;

  MyApp({required this.getDoctors, required this.appointmentRepository});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GetDoctors>.value(value: getDoctors),
        RepositoryProvider<AppointmentRepository>.value(value: appointmentRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppointmentBloc>(
            create: (context) => AppointmentBloc(appointmentRepository: appointmentRepository)..add(LoadAppointments()),
          ),
        ],
        child: MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );
  }
}
