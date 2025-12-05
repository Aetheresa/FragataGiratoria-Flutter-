import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade800,
                ],
              ),
            ),
            child: Column(
              children: [
                // ignore: prefer_const_constructors
                SizedBox(height: 40),
                // Logo
                Column(
                  children: [
                    Image.asset(
                      'assets/icono-fragata.jpg',
                      width: 60,
                      height: 60,
                      errorBuilder: (context, error, stackTrace) => 
                        // ignore: prefer_const_constructors
                        Icon(Icons.anchor, size: 50, color: Colors.white),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 10),
                    // ignore: prefer_const_constructors
                    Text(
                      'La Fragata\nGiratoria',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 20),
                // Buscador
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '🔍 Búsqueda',
                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.blue.shade800,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      // ignore: prefer_const_constructors
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 30),
                // Menú de navegación
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      _buildNavItem(Icons.dashboard, 'Inicio', true),
                      _buildNavItem(Icons.inventory, 'Productos', false),
                      _buildNavItem(Icons.restaurant_menu, 'Platillos', false),
                      _buildNavItem(Icons.shopping_cart, 'Compras', false),
                      _buildNavItem(Icons.receipt_long, 'Pedidos', false),
                      _buildNavItem(Icons.people, 'Usuarios', false),
                      _buildNavItem(Icons.payment, 'Métodos de Pago', false),
                    ],
                  ),
                ),
                // Botones inferiores
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildNavItem(Icons.settings, 'Ajustes', false),
                      _buildNavItem(Icons.help, 'Ayuda', false),
                      _buildNavItem(Icons.exit_to_app, 'Salir', false),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Contenido principal
          Expanded(
            child: Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage('assets/BGmicro.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '🍽️ Bienvenido al Sistema de Gestión',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        // ignore: deprecated_member_use
                        backgroundColor: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 16),
                    Text(
                      'Este panel te permitirá administrar los usuarios, productos y compras de tu restaurante.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        // ignore: deprecated_member_use
                        backgroundColor: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 40),
                    // Estadísticas
                    Row(
                      children: [
                        _buildStatCard('0', 'Usuarios registrados', Colors.blue),
                        // ignore: prefer_const_constructors
                        SizedBox(width: 20),
                        _buildStatCard('0', 'Productos activos', Colors.green),
                        // ignore: prefer_const_constructors
                        SizedBox(width: 20),
                        _buildStatCard('0', 'Compras registradas', Colors.orange),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 40),
                    // ignore: prefer_const_constructors
                    Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade900,
                          foregroundColor: Colors.white,
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Salir Del Dashboard',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String text, bool active) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: active ? Colors.blue.shade800 : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          text,
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          // Navegar a la sección correspondiente
          ScaffoldMessenger.of(Get?.context!).showSnackBar(
            SnackBar(
              content: Text('Navegando a $text'),
              // ignore: prefer_const_constructors
              duration: Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatCard(String value, String label, Color color) {
    return Expanded(
      child: Card(
        elevation: 4,
        // ignore: deprecated_member_use
        color: Colors.white.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on BuildContext? {
  get context => null;
}

// Helper para obtener el contexto
// ignore: non_constant_identifier_names, recursive_getters
BuildContext? get Get => Get;