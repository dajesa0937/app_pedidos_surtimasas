import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.only(top: 1, bottom: 1),
          child: AppBar(
            leading: _iconBack(context), // Aquí se agrega el icono de flecha
            elevation:
                0.0, // Establece la elevación a 0.0 para quitar la sombra
          ),
        ),
      ),
      body: Stack(children: [
        _backGroundCover(context),
        _boxForm(context),
        Column(
          children: [_imageCover(), _textAppName()],
        ),
      ]),
    );
  }

  Widget _iconBack(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navegar a la página anterior
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}

Widget _backGroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.60,
    color: Colors.amber,
  );
}

Widget _boxForm(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.60,
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.22, left: 50, right: 50),
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
          _textFielddName(),
          _textFielddLastName(),
          _textFieldPhone(),
          _textFielddPassword(),
          _textFielddConfirmPassword(),
          _buttonRegister(),
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

Widget _textFielddName() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Nombre',
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}

Widget _textFielddLastName() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Apellido',
        prefixIcon: Icon(Icons.person_outline),
      ),
    ),
  );
}

Widget _textFieldPhone() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Numero de Celular',
        prefixIcon: Icon(Icons.phone),
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

Widget _textFielddConfirmPassword() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirmar Contraseña',
        prefixIcon: Icon(Icons.lock_outline),
      ),
    ),
  );
}

Widget _buttonRegister() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'REGISTRARSE',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget _textYourInfo() {
  return Container(
    margin: EdgeInsets.only(top: 20, bottom: 50),
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
        width: 100,
        height: 100,
      ),
    ),
  );
}

Widget _textAppName() {
  return Column(
    children: [
      Text(
        'SERVICIO AL CLIENTE MOVIL : 310 000 000',
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      Text('Necesitas Ayuda? Envia un mensaje!',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black))
    ],
  );
}
