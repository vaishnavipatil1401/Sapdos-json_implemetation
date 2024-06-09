import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:patient_screen/data/models/doctor_info_model.dart';
import 'package:patient_screen/data/models/doctor_model.dart';
import 'package:patient_screen/domain/entities/doctor.dart';
import 'package:patient_screen/domain/repositories/doctor_repository.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  @override
  Future<DoctorInfoResponseModel> getDoctors() async {
    final response = await rootBundle.loadString("assets/doctor_list.json");

    final doctorInfo = DoctorInfoResponseModel.fromJson(jsonDecode(response));

    return doctorInfo;
  }
}

extension on DoctorModel {
  Doctor toEntity() {
    return Doctor(
      doctorImage: doctorImage,
      doctorName: doctorName,
      specialization: specialization,
      appointmentIcon: appointmentIcon,
      price: price,
    );
  }
}
