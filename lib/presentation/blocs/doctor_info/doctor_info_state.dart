part of 'doctor_info_bloc.dart';

abstract class DoctorInfoState extends Equatable {
  const DoctorInfoState();

  @override
  List<Object> get props => [];
}

class DoctorInfoInitial extends DoctorInfoState {}

class DoctorInfoLoading extends DoctorInfoState {}

class DoctorInfoLoaded extends DoctorInfoState {
  final DoctorInfo doctor;

  const DoctorInfoLoaded({required this.doctor});

  @override
  List<Object> get props => [doctor];
}

class DoctorInfoError extends DoctorInfoState {
  final String message;

  const DoctorInfoError({required this.message});

  @override
  List<Object> get props => [message];
}
