import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class RegistroUsuario extends StatelessWidget {
  const RegistroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('es', 'ES'),
      supportedLocales: [Locale('es', 'ES')],

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Formulario(),
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  //Key del formulario
  final _formkey = GlobalKey<FormState>();

  //Controladores
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  //variables del sistema
  String rol = 'Usuario';
  DateTime? fechaNacimiento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de Usuario"),
        backgroundColor: const Color.fromARGB(255, 235, 193, 159),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formkey,

          child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 120,
                color: Color.fromARGB(255, 0, 0, 0),
              ),

              const SizedBox(height: 20),

              const Text(
                "Registro Usuario",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              TextFormField(
                controller: nombreController,

                decoration: InputDecoration(
                  labelText: "Nombre Usuario",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: emailController,

                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  labelText: "Correo Electronico",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: phoneController,

                keyboardType: TextInputType.phone,

                decoration: const InputDecoration(
                  labelText: "Numero de Telefono",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: passwordController,

                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),

              DropdownButtonFormField(
                value: rol,

                decoration: InputDecoration(
                  labelText: 'Rol',
                  border: OutlineInputBorder(),
                ),

                items: const [
                  DropdownMenuItem(value: 'Usuario', child: Text('Usuario')),
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'Cliente', child: Text('Cliente')),
                ],
                onChanged: (value) {
                  setState(() {
                    rol = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.calendar_month),
                  label: Text(
                    fechaNacimiento == null
                        ? 'Seleccionar fecha de Nacimiento'
                        : 'Fecha: ${fechaNacimiento!.day}/${fechaNacimiento!.month}/${fechaNacimiento!.year}',
                  ),

                  onPressed: () async {
                    DateTime? fecha = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );

                    if (fecha != null) {
                      setState(() {
                        fechaNacimiento = fecha;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
