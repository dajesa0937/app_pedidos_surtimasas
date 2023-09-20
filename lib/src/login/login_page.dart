import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: Stack(children: [
        _backGroundColor(context),
        Column(
          children: [_imageCover(), _textAppName()],
        )
      ]),
    );
  }

  Widget _imageCover() {
    // print('Ruta de la imagen: ${'assets/img/logo_surtimasas.jpg'}');

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/logo_surtimasas.jpg',
          width: 250,
          height: 250,
        ),
      ),
    );
  }

  Widget _textAppName() {
    return Column(
      children: [
        Text(
          'PEDIDOS',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
               Text('SURTIMASAS DE LA COSTA',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)
        )
      ],
    );
  }

  Widget _backGroundColor(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.55,
      color: Colors.amber,
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('¿No Tienes Cuenta?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
        ),),
        SizedBox(width: 10),
        Text('Registrate Aquí',
          style: TextStyle(
          color: Colors.amber,
          fontSize: 25,
          fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
