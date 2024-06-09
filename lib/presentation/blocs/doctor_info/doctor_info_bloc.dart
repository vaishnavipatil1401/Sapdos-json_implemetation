import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:patient_screen/domain/entities/doctor_info.dart';
import 'package:patient_screen/domain/usecases/get_doctor_info.dart';

part 'doctor_info_event.dart';
part 'doctor_info_state.dart';

class DoctorInfoBloc extends Bloc<DoctorInfoEvent, DoctorInfoState> {
  final GetDoctorInfo getDoctorInfo;

  DoctorInfoBloc(this.getDoctorInfo) : super(DoctorInfoInitial()) {
    on<FetchDoctorInfo>((event, emit) async {
      emit(DoctorInfoLoading());
      try {
        final doctor = await getDoctorInfo();
        emit(DoctorInfoLoaded(doctor: doctor));
      } catch (e) {
        emit(DoctorInfoError(message: e.toString()));
      }
    });
  }
}
