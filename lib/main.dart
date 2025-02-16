import 'package:flutter/material.dart';
import 'package:flutter_app_inicial/pagina_principal.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adopta una Mascota',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaPrincipal(titulo: 'Adopta una Mascota'),
    );
  }
}

