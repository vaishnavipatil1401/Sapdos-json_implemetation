import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_screen/domain/usecases/get_doctors.dart';
import 'package:patient_screen/presentation/pages/doctors_list.dart';
import 'package:patient_screen/presentation/blocs/doctor_bloc.dart';
import '../../core/constants/text_styles.dart';
import '../widgets/custom_button.dart';
import 'login_page.dart'; 
import 'registration_screen.dart'; 
import 'package:patient_screen/presentation/pages/doctors_list.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "SAPDOS",
            style: TextStyles.title,
          ),
          SizedBox(height: 90),
          Column(
            children: [
              Text(
                "Login to your SAPDOS account",
                style: TextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
              Text(
                "or create one now.",
                style: TextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 90),
          SizedBox(
            width: 250, 
            height: 45, 
            child: CustomButton(
              buttonText: "LOGIN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 259, 
            height: 45, 
            child: CustomButton(
              buttonText: "SIGN-UP",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
            ),
          ),
          SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => DoctorBloc(context.read<GetDoctors>())
                      ..add(GetDoctorList()),
                    child: HomePage(),
                  ),
                ),
              );
            },
            child: Text(
              "Proceed as a Doctor", //click on this if you want to see json implementation - list of doctors
              style: TextStyles.underlineText,
            ),
          ),
        ],
      ),
    );
  }
}
