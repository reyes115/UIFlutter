import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

/*Fondo*/
class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(225, 1, 29, 53),
          Color.fromRGBO(0, 68, 124, 1),
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft
        )
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          
          Text('Sing in to TGD and continue',
          textAlign: TextAlign.center,
          /*Estilos a texto*/
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.normal,
          ),),
          SizedBox(height: 10),
          Text('Enter your mail and password below to continue to the The Growing Developer and let the learning begin!',
            /*Estilos a texto*/
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 1.5),),
          SizedBox(height: 15),
          Datos(),
          
        ],
      ),);
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {

/*Variable tipo bool*/
bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent
      ),
      child: Column(
        children: [
          const SizedBox(height: 5),
          TextFormField(
            /*Tipo de texto a recibir*/
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(  
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue
                )
              ),
              /*Placeholder*/
              suffixIcon: Icon(
                Icons.people,
              ),
              hintText: 'Username',
              hintStyle: TextStyle(color: Colors.white)
            ),
          ),
          const SizedBox(height: 10), 
          TextFormField(
            /*Solo permite ver el texto en * */
            obscureText: obs,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: IconButton(
                icon: Icon(Icons.lock),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = false : obs = true; 
                  });
                },
              )
            ),
          ),
          SizedBox(height: 10),
          Botones(),
        ]
      ),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: valor, 
          onChanged:(value){
            setState(() {
              valor == false ? valor = true  : valor = false;
            });
          }
        ),
        const Text('Remember me'),
        const Spacer(),
        TextButton(onPressed: () {}, 
        child: const Text('Forgot password?'))
      ],
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(onPressed: () {},
          style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 170, 175))
          ),
          child: Text('Login',style: TextStyle(color: Colors.white),)  
          ),
        ),
        const SizedBox(height: 25,width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 10, 83, 167))
          ),
          child: Text('Sign with Google',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
    )],
    );
  }
}