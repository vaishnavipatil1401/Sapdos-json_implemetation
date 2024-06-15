part of 'doctor_bloc.dart';

abstract class DoctorEvent extends Equatable {
  const DoctorEvent();
}

class GetDoctorList extends DoctorEvent {
  @override
  List<Object> get props => [];
}
