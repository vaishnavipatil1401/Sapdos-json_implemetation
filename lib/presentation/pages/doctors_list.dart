import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_screen/domain/usecases/get_doctors.dart';
import 'package:patient_screen/presentation/blocs/doctor/doctor_bloc.dart';
import 'package:patient_screen/presentation/widgets/doctor_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SAPDOS")),
      body: BlocProvider(
        create: (context) =>
            DoctorBloc(context.read<GetDoctors>())..add(GetDoctorList()),
        child: DoctorList(),
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        if (state is DoctorLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is DoctorLoaded) {
          return ListView.builder(
            itemCount: state.doctors.length,
            itemBuilder: (context, index) {
              return DoctorCard(doctor: state.doctors[index]);
            },
          );
        } else if (state is DoctorError) {
          return Center(child: Text(state.message));
        } else {
          return Container();
        }
      },
    );
  }
}
