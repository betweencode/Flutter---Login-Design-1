import 'package:flutter/material.dart';
import 'package:login_demo/modules/login/widgets/_TextoLogin.dart';

class cabeceera extends StatelessWidget {
  const cabeceera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(top: 250),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.cyan),
            child: Column(
              children: [textoLogin(titulo: "SONO",tamanio: 50,color: Colors.white,),textoLogin(titulo: "La aplicación más rapida del mundo",tamanio: 16,color: Colors.white,)],),
          ),
        );
  }
}