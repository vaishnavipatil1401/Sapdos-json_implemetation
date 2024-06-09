import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_screen/data/repositories/doctor_info_repository_impl.dart';
import 'package:patient_screen/domain/entities/doctor.dart';
import 'package:patient_screen/domain/entities/doctor_info.dart';
import 'package:patient_screen/domain/usecases/get_doctor_info.dart';
import 'package:patient_screen/presentation/blocs/doctor_info/doctor_info_bloc.dart';
import 'package:patient_screen/presentation/widgets/doctor_info_widget.dart';

class DoctorInfoPage extends StatelessWidget {
  final Doctor doctor;

  const DoctorInfoPage({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Info'),
      ),
      body: DoctorInfoWidget(
        doctor: DoctorInfo(
          assetImage: doctor.doctorImage,
          availableSlots: [
            '10:00 - 10:15 AM',
            '10:30 - 10:45 AM',
            '10:30 - 10:45 AM',
            '10:30 - 10:45 AM',
            '10:30 - 10:45 AM',
            '10:30 - 10:45 AM'
          ],
          description: "NA",
          experience: 0,
          imageUrl: doctor.doctorImage,
          name: doctor.doctorName,
          qualification: "NA",
          rating: 0,
          reviews: 0,
          speciality: doctor.specialization,
        ),
      ),
    );
    //   body: MultiRepositoryProvider(
    //     providers: [
    //       RepositoryProvider<DoctorInfoRepositoryImpl>(
    //         create: (context) => DoctorInfoRepositoryImpl(),
    //       ),
    //     ],
    //     child: MultiBlocProvider(
    //       providers: [
    //         BlocProvider<DoctorInfoBloc>(
    //           create: (context) {
    //             final repository =
    //                 RepositoryProvider.of<DoctorInfoRepositoryImpl>(context);
    //             return DoctorInfoBloc(GetDoctorInfo(repository))
    //               ..add(FetchDoctorInfo());
    //           },
    //         ),
    //       ],
    //       child: BlocBuilder<DoctorInfoBloc, DoctorInfoState>(
    //         builder: (context, state) {
    //           if (state is DoctorInfoLoading) {
    //             return Center(child: CircularProgressIndicator());
    //           } else if (state is DoctorInfoLoaded) {
    //             return ;
    //           } else if (state is DoctorInfoError) {
    //             return Center(child: Text(state.message));
    //           } else {
    //             return Center(child: Text('Unknown state'));
    //           }
    //         },
    //       ),
    //     ),
    //   ),
    // );
  }
}
