import 'package:equatable/equatable.dart';
//import 'package:patient_screen/data/models/doctor_model.dart';
import 'package:patient_screen/data/models/user.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegisterUser extends RegistrationEvent {
  final User user;

  const RegisterUser(this.user);

  @override
  List<Object> get props => [user];
}
