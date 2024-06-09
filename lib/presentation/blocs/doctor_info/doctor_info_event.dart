part of 'doctor_info_bloc.dart';

abstract class DoctorInfoEvent extends Equatable {
  const DoctorInfoEvent();

  @override
  List<Object> get props => [];
}

class FetchDoctorInfo extends DoctorInfoEvent {}
