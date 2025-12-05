import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InicioPage extends StatelessWidget {
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
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.anchor, color: Colors.blue.shade900, size: 30),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 10),
                  // ignore: prefer_const_constructors
                  Text(
                    'La Fragata Giratoria',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Experiencia gastronómica',
                    style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.restaurant_menu, color: Colors.blue.shade800),
              // ignore: prefer_const_constructors
              title: Text('Menú'),
              onTap: () {
                Navigator.pushNamed(context, '/menu');
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue.shade800),
              // ignore: prefer_const_constructors
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.blue.shade800),
              // ignore: prefer_const_constructors
              title: Text('Iniciar Sesión'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.blue.shade800),
              // ignore: prefer_const_constructors
              title: Text('Registrarse'),
              onTap: () {
                Navigator.pushNamed(context, '/registro');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support, color: Colors.blue.shade800),
              // ignore: prefer_const_constructors
              title: Text('Contáctanos'),
              onTap: () {
                Navigator.pushNamed(context, '/contactanos');
              },
            ),
            // ignore: prefer_const_constructors
            Divider(),
            ListTile(
              leading: Icon(Icons.info, color: Colors.grey.shade700),
              // ignore: prefer_const_constructors
              title: Text('Acerca de'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Fondo de pantalla
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage('assets/BGgeneral.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // Banner principal
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // ignore: deprecated_member_use
                        Colors.blue.shade900.withOpacity(0.8),
                        // ignore: deprecated_member_use
                        Colors.blue.shade700.withOpacity(0.8)
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.only(
                      // ignore: prefer_const_constructors
                      bottomLeft: Radius.circular(30),
                      // ignore: prefer_const_constructors
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            'Bienvenido a',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 15),
                          // ignore: prefer_const_constructors
                          Text(
                            'La Fragata Giratoria',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 20),
                          Text(
                            'Una experiencia gastronómica sobre el mar',
                            style: TextStyle(
                              // ignore: deprecated_member_use
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/menu');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue.shade900,
                              // ignore: prefer_const_constructors
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 5,
                            ),
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Ver Menú',
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Contenido adicional
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Especialidades del Mar',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          // ignore: deprecated_member_use
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(height: 20),
                      GridView.count(
                        shrinkWrap: true,
                        // ignore: prefer_const_constructors
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: [
                          _buildFoodCard('Ceviche Clásico', Icons.set_meal, Colors.blue, '\$20,000'),
                          _buildFoodCard('Salmón', Icons.restaurant, Colors.green, '\$90,000'),
                          _buildFoodCard('Langosta', Icons.emoji_food_beverage, Colors.orange, '\$110,000'),
                          _buildFoodCard('Camarones', Icons.dinner_dining, Colors.red, '\$30,000'),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(height: 40),
                      Text(
                        'Horarios de atención',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                          // ignore: deprecated_member_use
                          backgroundColor: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(height: 15),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.9),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              _buildScheduleRow('Lunes a Viernes', '12:00 - 23:00'),
                              // ignore: prefer_const_constructors
                              Divider(thickness: 1),
                              _buildScheduleRow('Sábados', '11:00 - 00:00'),
                              // ignore: prefer_const_constructors
                              Divider(thickness: 1),
                              _buildScheduleRow('Domingos', '11:00 - 22:00'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCard(String name, IconData icon, Color color, String price) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      // ignore: deprecated_member_use
      color: Colors.white.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 45, color: color),
            // ignore: prefer_const_constructors
            SizedBox(height: 15),
            Text(
              name,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            Text(
              price,
              style: TextStyle(
                color: Colors.green.shade700,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleRow(String day, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            time,
            style: TextStyle(
              color: Colors.blue.shade800,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}