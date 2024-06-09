import 'package:flutter/material.dart';
import 'package:patient_screen/domain/entities/doctor.dart';
import 'package:patient_screen/presentation/pages/doctor_info_page.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(doctor.doctorImage),
        title: Text(doctor.doctorName),
        subtitle: Text(doctor.specialization),
        trailing: SizedBox(
          width: 150,
          child: Row(
            children: [
              Text("Price: ${doctor.price}"),
              const SizedBox(
                width: 40,
              ),
              IconButton(
                icon: Icon(Icons.app_registration),
                onPressed: () {
                  
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DoctorInfoPage(
                      doctor: doctor,
                    ),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
