import 'package:flutter/material.dart';
import 'package:login_demo/modules/login/widgets/_TextoLogin.dart';
import 'package:login_demo/modules/login/widgets/cabecera.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        child: Column(
      children: [
        cabeceera(),
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.transparent),
          child: CustomPaint(
            size: Size(300, 200),
            painter: RPSCustomPainter(),
          ),
        ),
        Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
          width: double.infinity,
          child: Column(
            children: [
              TextButton(
                  onPressed:  () {
                     Navigator.pushReplacementNamed(context, "/principal");
                  },
                  child: const Text("Ingresar"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.cyan,
                    padding: EdgeInsets.only(left: 60, right: 60),
                    shape: RoundedRectangleBorder(
      	borderRadius: BorderRadius.circular(30.0),
      )
                  )),
              Text("No tienes cuenta?"),
              TextButton(onPressed: () {}, child: Text("Registrarse"))
            ],
          ),
        ))
      ],
    )),);
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.6);
    path0.quadraticBezierTo(size.width * 0.1179000, size.height * 0.0736000,
        size.width * 0.4628500, size.height * 0.4);
    path0.quadraticBezierTo(size.width * 0.8279000, size.height * 0.7,
        size.width * 0.9998000, size.height * 0.4);
    path0.lineTo(size.width, -4);
    path0.lineTo(0, 0);

    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
