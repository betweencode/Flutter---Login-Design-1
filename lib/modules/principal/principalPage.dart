import 'package:flutter/material.dart';
import 'package:login_demo/modules/login/loginPage.dart';

class principalPage extends StatefulWidget {
  principalPage({Key? key}) : super(key: key);

  @override
  State<principalPage> createState() => _principalPageState();
}

class _principalPageState extends State<principalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
            icon: Icon(
              Icons.menu,
            ),
            color: Colors.white,
            splashColor: Colors.purple,
            onPressed: () {},
          ),
        title: Center(child: Text("Inbox",style: TextStyle(color: Colors.white),),),
        actions: [
          TextButton(onPressed: ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>loginPage())), child: Text("Salir",style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Container(
        child: listachat(),
      ),
    );
  }

  Widget listachat()=> ListView.builder(itemCount: 20,itemBuilder: (context,indice){
    if(indice.isOdd) return Divider();
    return itemindivisual();
  });

  Widget itemindivisual(){
    return ListTile(
      title: Text("Santiago antonio mariscal"),
      subtitle: Text("Algun comentario de la lista de chat")
      ,leading: CircleAvatar(foregroundImage: NetworkImage("https://scontent.foax2-1.fna.fbcdn.net/v/t1.6435-1/p148x148/52441737_538848883273779_8791250476646531072_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=1eb0c7&_nc_ohc=GuLSqvt1mbEAX_cqsko&_nc_ht=scontent.foax2-1.fna&oh=00_AT8-D-vLP_ygilU0JqknL0uW3XwdR2kpzeC1TRk4EoVUnQ&oe=622889B9"),),);
  }
}
