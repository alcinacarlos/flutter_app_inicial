import 'package:flutter/material.dart';
import 'package:flutter_app_inicial/pagina_mascotas.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key, required this.titulo});

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Bienvenido'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaginaListaMascotas()),
                );
              },
              child: const Text('Ver Mascotas'),
            ),
          ],
        ),
      ),
    );
  }
}