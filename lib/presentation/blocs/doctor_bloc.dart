import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:patient_screen/domain/entities/doctor.dart';
import 'package:patient_screen/domain/usecases/get_doctors.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final GetDoctors getDoctors;

  DoctorBloc(this.getDoctors) : super(DoctorInitial()) {
    on<GetDoctorList>(_onGetDoctorList);
  }

  void _onGetDoctorList(GetDoctorList event, Emitter<DoctorState> emit) async {
    emit(DoctorLoading());
    try {
      final doctors = await getDoctors();
      final doctorsList = doctors.doctorsList
              ?.map((e) => Doctor(
                    appointmentIcon: "",
                    doctorImage: e.doctorImage ?? "",
                    doctorName: e.doctorName ?? "",
                    price: e.price ?? 0,
                    specialization: e.specialization ?? "",
                  ))
              .toList() ??
          [];
      emit(DoctorLoaded(doctorsList));
    } catch (e) {
      emit(DoctorError("Failed to load doctors"));
    }
  }
}
