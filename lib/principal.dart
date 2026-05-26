import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Titulo Principal')),
        body: Center(
          child: Container(
            //Tamaño del contenedor
            width: 300,
            height: 300,
            //Espaciado
            margin: const EdgeInsets.all(20),
            //Color Contenedor
            decoration: BoxDecoration(
              color: const Color.fromARGB(66, 255, 0, 0),
              borderRadius: BorderRadius.circular(20),
            ),
            //Contenido
            //Filas
            child: Row(
              //Espacio entre filas
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //Hijos del contenedor
              children: [
                //hijo 1
                Column(
                  //centrar elementos de las columnas
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Hijos del contenedor
                  children: [
                    //hijo 1
                    Icon(Icons.person, color: Colors.white, size: 50),
                    //hijo 2
                    Text(
                      'persona',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                //Hijo 2 row
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.white, size: 50),
                    Text(
                      'Telefono',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
