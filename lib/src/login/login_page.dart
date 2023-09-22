import 'package:app_pedidos_surtimasas/src/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = LoginController();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textDontHaveAccount(),
      ),
      body: Stack(children: [
        _backGroundColor(context),
        _boxForm(context),
        Column(
          children: [_imageCover(), _textAppName()],
        )
      ]),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.50, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0, 010),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFielddEmail(),
            _textFielddPassword(),
            _buttonLogin()
          ],
        ),
      ),
    );
  }

  Widget _textFielddEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electronico',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }

  Widget _textFielddPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'INGRESAR',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 50),
      child: Text(
        'Ingresa tus Datos:',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
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
          width: 290,
          height: 215,
        ),
      ),
    );
  }

  Widget _textAppName() {
    return Column(
      children: [
        Text(
          'PEDIDOS:',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text('SURTIMASAS DE LA COSTA',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black))
      ],
    );
  }

  Widget _backGroundColor(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.60,
      color: Colors.amber,
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No Tienes Cuenta?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: (_con.goToRegisterPage),
          child: Text(
            'Registrate Aquí',
            style: TextStyle(
                color: Colors.amber, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
