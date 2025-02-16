import 'package:flutter/material.dart';
import 'package:flutter_app_inicial/pagina_adopcion.dart';

class PaginaListaMascotas extends StatelessWidget {
  const PaginaListaMascotas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mascotas = [
      {'nombre': 'Buddy', 'imagen': 'assets/dog1.jpg', 'edad': '2 años', 'genero': 'Macho'},
      {'nombre': 'Mittens', 'imagen': 'assets/cat1.jpg', 'edad': '1 año', 'genero': 'Hembra'},
      {'nombre': 'Charlie', 'imagen': 'assets/dog2.jpg', 'edad': '3 años', 'genero': 'Macho'},
      {'nombre': 'Luna', 'imagen': 'assets/cat2.jpg', 'edad': '2 años', 'genero': 'Hembra'},
      {'nombre': 'Rex', 'imagen': 'assets/dog3.jpg', 'edad': '4 años', 'genero': 'Macho'},
      {'nombre': 'Mia', 'imagen': 'assets/cat3.jpg', 'edad': '3 años', 'genero': 'Hembra'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona una Mascota'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: mascotas.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    mascotas[index]['imagen']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        mascotas[index]['nombre']!,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Edad: ${mascotas[index]['edad']}'),
                      Text('Género: ${mascotas[index]['genero']}'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaginaFormularioAdopcion(nombreMascota: mascotas[index]['nombre']!),
                      ),
                    );
                  },
                  child: const Text('Adoptar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}