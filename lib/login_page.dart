import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Simulación de login
      if (_emailController.text == 'admin@fragata.com' && 
          _passwordController.text == '123456') {
        Navigator.pushNamedAndRemoveUntil(context, '/dashboard', (route) => false);
      } else {
        setState(() {
          _errorMessage = 'Credenciales incorrectas';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icono-fragata.jpg',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => 
                Icon(Icons.anchor, color: Colors.blue.shade900),
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 12),
            // ignore: prefer_const_constructors
            Text('La Fragata Giratoria'),
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
      body: Stack(
        children: [
          // Fondo
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage('assets/BGmicro.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(height: 40),
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                      // ignore: deprecated_member_use
                      backgroundColor: Colors.white.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 10),
                  Text(
                    'Ingresa tus credenciales para acceder',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      // ignore: deprecated_member_use
                      backgroundColor: Colors.white.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 40),

                  if (_errorMessage != null)
                    Container(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(15),
                      // ignore: prefer_const_constructors
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red.shade200),
                      ),
                      child: Row(
                        children: [
                          // ignore: prefer_const_constructors
                          Icon(Icons.error_outline, color: Colors.red),
                          // ignore: prefer_const_constructors
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              _errorMessage!,
                              style: TextStyle(color: Colors.red.shade700),
                            ),
                          ),
                        ],
                      ),
                    ),

                  Card(
                    elevation: 4,
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(0.9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Email input
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'Correo electrónico',
                                prefixIcon: Icon(Icons.email, color: Colors.blue.shade800),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade50,
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

                            // Password input
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                prefixIcon: Icon(Icons.lock, color: Colors.blue.shade800),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade50,
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor ingresa tu contraseña';
                                }
                                return null;
                              },
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(height: 20),

                            // Remember me checkbox
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value!;
                                    });
                                  },
                                ),
                                // ignore: prefer_const_constructors
                                Text('Recordarme'),
                              ],
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(height: 30),

                            // Login button
                            ElevatedButton(
                              onPressed: _submitForm,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade900,
                                foregroundColor: Colors.white,
                                // ignore: prefer_const_constructors
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 3,
                              ),
                              // ignore: prefer_const_constructors
                              child: Text(
                                'Ingresar',
                                // ignore: prefer_const_constructors
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(height: 20),

                            // Forgot password
                            TextButton(
                              onPressed: () {
                                // Navegar a recuperar contraseña
                                ScaffoldMessenger.of(context).showSnackBar(
                                  // ignore: prefer_const_constructors
                                  SnackBar(
                                    // ignore: prefer_const_constructors
                                    content: Text('Funcionalidad en desarrollo'),
                                    // ignore: prefer_const_constructors
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                              child: Text(
                                '¿Has olvidado tu contraseña?',
                                style: TextStyle(color: Colors.blue.shade700),
                              ),
                            ),

                            // ignore: prefer_const_constructors
                            Divider(height: 40),
                            
                            // Register link
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '¿No tienes una cuenta? ',
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/registro');
                                  },
                                  child: Text(
                                    'Regístrate',
                                    style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}