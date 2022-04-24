import 'package:flutter/material.dart';
import 'package:practica5/models/list_model.dart';
import 'package:practica5/routes/routes.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Persona> persona = [
    Persona("Ana", "9102547291", "Venustiano Carranza 117",
        Image(image: AssetImage('assets\image1.jpg'))),
    Persona("Veronica", "6782453891", "Jaime Nuno 2",
        Image(image: AssetImage('assets\image2.jpg'))),
    Persona("Norma", "3417820843", "Orquidea 29",
        Image(image: AssetImage('assets\image3.jpg'))),
    Persona("Enrique", "7819261729", "Independencia 157",
        Image(image: AssetImage('assets\image4.jpg'))),
    Persona("David", "6719018742", "Revolucion 132",
        Image(image: AssetImage('assets\image5.jpg'))),
    Persona("Juan", "7891027681", "Miguel Hidalgo 331",
        Image(image: AssetImage('assets\image6.jpg'))),
    Persona("Alina", "1982722681", "Arbolada 71",
        Image(image: AssetImage('assets\image7.jpg'))),
    Persona("Andrea", "8193646192", "Avenida 2",
        Image(image: AssetImage('assets\image8.jpg'))),
    Persona("Leonardo", "0186371921", "Calle 34",
        Image(image: AssetImage('assets\image9.jpg'))),
    Persona("Tomas", "7371910337", "Patria 12",
        Image(image: AssetImage('assets\image10.jpg')))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Persons'),
          ),
          body: ListView.builder(
              itemCount: persona.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(persona[index].name),
                  subtitle: Text(
                      persona[index].phone + '\n' + persona[index].address),
                  leading: CircleAvatar(
                    child: Text(persona[index].name.substring(0, 1)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/details');
                      },
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.black)),
                );
              })),
    );
  }
}
