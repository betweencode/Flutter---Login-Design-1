import 'package:flutter/material.dart';

class textoLogin extends StatelessWidget {
  final String titulo;
  final Color color;
  final double tamanio;
  const textoLogin({Key? key,required this.titulo,required this.color,required this.tamanio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(titulo,style: TextStyle(color: color,fontSize: tamanio,),));
  }
}