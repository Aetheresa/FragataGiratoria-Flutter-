import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ContactanosPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ContactanosPageState createState() => _ContactanosPageState();
}

class _ContactanosPageState extends State<ContactanosPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _asuntoController = TextEditingController();
  final _mensajeController = TextEditingController();

  bool _showSuccess = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _showSuccess = true;
      });
      
      // Simular envío
      // ignore: prefer_const_constructors
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _showSuccess = false;
        });
        _nombreController.clear();
        _emailController.clear();
        _asuntoController.clear();
        _mensajeController.clear();
      });
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    _asuntoController.dispose();
    _mensajeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/jpg/icono-fragata.jpg',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => 
                Icon(Icons.anchor, color: Colors.blue[900]),
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 12),
            // ignore: prefer_const_constructors
            Text('Contáctanos'),
          ],
        ),
        leading: IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              Text(
                'Contáctanos',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              Text(
                '¿Tienes preguntas o comentarios? ¡Escríbenos!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 30),

              // Mensaje de éxito
              if (_showSuccess)
                Container(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.all(16),
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green[200]!),
                  ),
                  child: Row(
                    children: [
                      // ignore: prefer_const_constructors
                      Icon(Icons.check_circle, color: Colors.green),
                      // ignore: prefer_const_constructors
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '¡Mensaje enviado correctamente!',
                          style: TextStyle(color: Colors.green[700]),
                        ),
                      ),
                    ],
                  ),
                ),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // Nombre
                        TextFormField(
                          controller: _nombreController,
                          decoration: InputDecoration(
                            labelText: 'Nombre completo',
                            prefixIcon: Icon(Icons.person, color: Colors.blue[800]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[50],
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu nombre';
                            }
                            return null;
                          },
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 20),

                        // Email
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Correo electrónico',
                            prefixIcon: Icon(Icons.email, color: Colors.blue[800]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[50],
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu correo';
                            }
                            if (!value.contains('@')) {
                              return 'Ingresa un correo válido';
                            }
                            return null;
                          },
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 20),

                        // Asunto
                        TextFormField(
                          controller: _asuntoController,
                          decoration: InputDecoration(
                            labelText: 'Asunto',
                            prefixIcon: Icon(Icons.subject, color: Colors.blue[800]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[50],
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa el asunto';
                            }
                            return null;
                          },
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 20),

                        // Mensaje
                        TextFormField(
                          controller: _mensajeController,
                          decoration: InputDecoration(
                            labelText: 'Mensaje',
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[50],
                          ),
                          maxLines: 5,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu mensaje';
                            }
                            return null;
                          },
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 30),

                        // Botón enviar
                        ElevatedButton(
                          onPressed: _submitForm,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[900],
                            foregroundColor: Colors.white,
                            // ignore: prefer_const_constructors
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          child: Text(
                            'Enviar Mensaje',
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ignore: prefer_const_constructors
              SizedBox(height: 40),
              // Información de contacto adicional
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.blue[800]),
                        // ignore: prefer_const_constructors
                        title: Text('Teléfono'),
                        // ignore: prefer_const_constructors
                        subtitle: Text('123-456-7890'),
                      ),
                      // ignore: prefer_const_constructors
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.blue[800]),
                        // ignore: prefer_const_constructors
                        title: Text('Email'),
                        // ignore: prefer_const_constructors
                        subtitle: Text('info@fragatagiratoria.com'),
                      ),
                      // ignore: prefer_const_constructors
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.blue[800]),
                        // ignore: prefer_const_constructors
                        title: Text('Dirección'),
                        // ignore: prefer_const_constructors
                        subtitle: Text('Calle del Mar #123, Ciudad Costera'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}