import 'package:flutter/material.dart';

class Trabajo extends StatelessWidget {
  const Trabajo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 150, 150, 0),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarjeta información"),
        ),
        body: Center(
          child: Container(
            width: 350,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 178, 178),
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 100,
                ),


                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Yoan Roberto",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: const [
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "yoan@gmail.com",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
Row(
                      children: const [
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "yoan@gmail.com",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "3158972563",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Bogotá",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                          ),
                        ),
                      ],
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