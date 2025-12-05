import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String description;
  final String price;
  final String imagePath;
  final String category;
  final List<String> emojis;

  MenuItem({
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.emojis,
  });
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // LISTA SIMPLIFICADA - Todas las imágenes directas en assets/
  List<MenuItem> menuItems = [
    // =============== ENTRADAS ===============
    MenuItem(
      title: 'Ceviche Clásico',
      description: 'Pescado fresco marinado en jugo de limón, cebolla morada y cilantro.',
      price: '\$20,000',
      imagePath: 'assets/Ceviche-Clásico.avif',  // RUTA SIMPLIFICADA
      category: 'Entradas',
      emojis: ['🐠', '🍋'],
    ),
    MenuItem(
      title: 'Tacos de Camarón',
      description: 'Tortillas de maíz rellenas de camarones a la parrilla, salsa de mango y aguacate.',
      price: '\$30,000',
      imagePath: 'assets/Tacos de Camarón.avif',  // RUTA SIMPLIFICADA
      category: 'Entradas',
      emojis: ['🦐', '🥭', '🥑'],
    ),
    MenuItem(
      title: 'Pulpo a la Parrilla',
      description: 'Pulpo tierno asado a la parrilla, servido con salsa de ajo y pimientos.',
      price: '\$50,000',
      imagePath: 'assets/PulpoParrilla.avif',  // RUTA SIMPLIFICADA
      category: 'Entradas',
      emojis: ['🐙', '🧄', '🫑'],
    ),
    MenuItem(
      title: 'Sopa de Mariscos',
      description: 'Camarones, almejas y calamares en un fondo aromatizado con especias.',
      price: '\$25,000',
      imagePath: 'assets/SopaMariscos.avif',  // RUTA SIMPLIFICADA
      category: 'Entradas',
      emojis: ['🐠', '🍋', '🌿'],
    ),
    
    // =============== PLATOS PRINCIPALES ===============
    MenuItem(
      title: 'Paella de Mariscos',
      description: 'Arroz con una mezcla de mariscos frescos, azafrán y verduras.',
      price: '\$80,000',
      imagePath: 'assets/PaellaMariscos.avif',  // RUTA SIMPLIFICADA
      category: 'Platos Principales',
      emojis: ['🐠', '🌿'],
    ),
    MenuItem(
      title: 'Filete de Salmón',
      description: 'Salmón a la plancha con salsa de limón y hierbas, acompañado de espárragos.',
      price: '\$90,000',
      imagePath: 'assets/Filete de Salmón.avif',  // RUTA SIMPLIFICADA
      category: 'Platos Principales',
      emojis: ['🐠', '🍋', '🌿'],
    ),
    MenuItem(
      title: 'Langosta al Horno',
      description: 'Langosta horneada con mantequilla de ajo y hierbas, servida con puré de papas.',
      price: '\$110,000',
      imagePath: 'assets/Langosta al Horno.avif',  // RUTA SIMPLIFICADA
      category: 'Platos Principales',
      emojis: ['🦞', '🧄', '🌿'],
    ),
    MenuItem(
      title: 'Filete de Pescado en Salsa de Coco',
      description: 'Filete de pescado blanco a la plancha, bañado en una suave salsa cremosa de coco.',
      price: '\$80,000',
      imagePath: 'assets/Filete de Pescado en Salsa de Coco.avif',  // RUTA SIMPLIFICADA
      category: 'Platos Principales',
      emojis: ['🐠', '🍋', '🥥'],
    ),
    
    // =============== ADICIONES ===============
    MenuItem(
      title: 'Camarones',
      description: 'Porción de camarones frescos, salteados en aceite de oliva con ajo picado.',
      price: '\$15,000',
      imagePath: 'assets/camarones.avif',  // RUTA SIMPLIFICADA
      category: 'Adiciones',
      emojis: ['🦐', '🌿'],
    ),
    MenuItem(
      title: 'Porción de arroz con coco',
      description: 'Arroz blanco cocido lentamente en leche de coco, con un toque dulce y salado.',
      price: '\$6,500',
      imagePath: 'assets/Porción de arroz con coco.avif',  // RUTA SIMPLIFICADA
      category: 'Adiciones',
      emojis: ['🥥', '🍚'],
    ),
    MenuItem(
      title: 'Patacones crocantes',
      description: 'Rodajas de plátano verde fritas, acompañadas con suero costeño artesanal.',
      price: '\$6,000',
      imagePath: 'assets/Patacones crocantes.avif',  // RUTA SIMPLIFICADA
      category: 'Adiciones',
      emojis: ['🧂'],
    ),
    MenuItem(
      title: 'Vegetales salteados',
      description: 'Combinación de zanahoria, brócoli, pimentón y cebolla, salteados en mantequilla.',
      price: '\$6,500',
      imagePath: 'assets/Vegetales salteados.avif',  // RUTA SIMPLIFICADA
      category: 'Adiciones',
      emojis: ['🧈', '🥕', '🫑', '🧅'],
    ),
    
    // =============== BEBIDAS ===============
    MenuItem(
      title: 'Coctel frutos rojos',
      description: 'Un coctel refrescante con hielo, con frutos rojos, jugo de limón con su rodaja.',
      price: '\$25,000',
      imagePath: 'assets/Coctel frutos rojos.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🍒', '🧊'],
    ),
    MenuItem(
      title: 'Jugo tropical',
      description: 'Un jugo fresco y delicioso con mezclas de frutas tropicales y hielo.',
      price: '\$15,000',
      imagePath: 'assets/Jugo tropical.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🥭', '🧊'],
    ),
    MenuItem(
      title: 'Vino intenso',
      description: 'Vino de color tinto intenso con notas de frutas negras y maduras.',
      price: '\$42,000',
      imagePath: 'assets/Vino intenso.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🍇', '🧊'],
    ),
    MenuItem(
      title: 'Whisky',
      description: 'Destilado añejado en barricas de madera, con sabores ahumados y especiados.',
      price: '\$35,000',
      imagePath: 'assets/Whisky.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🍯', '🪵', '🧊'],
    ),
    MenuItem(
      title: 'Sauvignon Blanc',
      description: 'Refrescante y herbal, con frutas tropicales y acidez vibrante.',
      price: '\$34,000',
      imagePath: 'assets/Sauvignon Blanc.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🍷', '🧊'],
    ),
    MenuItem(
      title: 'Vermentino',
      description: 'Vino blanco fresco con notas cítricas, manzana verde y un sutil toque salino.',
      price: '\$32,000',
      imagePath: 'assets/Vermentino.avif',  // RUTA SIMPLIFICADA
      category: 'Bebidas',
      emojis: ['🍋', '🧊'],
    ),
  ];

  String selectedCategory = 'Entradas';
  List<String> categories = ['Entradas', 'Platos Principales', 'Adiciones', 'Bebidas'];

  @override
  Widget build(BuildContext context) {
    List<MenuItem> filteredItems = menuItems.where((item) => item.category == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icono-fragata.jpg',  // RUTA SIMPLIFICADA
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => 
                Icon(Icons.anchor, color: Colors.blue.shade900),
            ),
            SizedBox(width: 12),
            Text('Menú - La Fragata Giratoria'),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Categorías
          Container(
            height: 60,
            color: Colors.blue.shade50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: ChoiceChip(
                    label: Text(categories[index]),
                    selected: selectedCategory == categories[index],
                    selectedColor: Colors.blue.shade900,
                    labelStyle: TextStyle(
                      color: selectedCategory == categories[index] 
                        ? Colors.white 
                        : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    onSelected: (selected) {
                      setState(() {
                        selectedCategory = categories[index];
                      });
                    },
                  ),
                );
              },
            ),
          ),
          
          // Contador de items
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.restaurant_menu, color: Colors.blue.shade900, size: 18),
                SizedBox(width: 8),
                Text(
                  '${filteredItems.length} platillos disponibles',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            ),
          ),

          // Lista de productos
          Expanded(
            child: filteredItems.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off, size: 80, color: Colors.grey.shade300),
                        SizedBox(height: 20),
                        Text(
                          'No hay platillos en esta categoría',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return _buildMenuItemCard(filteredItems[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItemCard(MenuItem item) {
    return Card(
      margin: EdgeInsets.all(12),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Contenedor de imagen
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Imagen con manejo de errores mejorado
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(
                    item.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Si la imagen no existe, mostrar placeholder
                      return Container(
                        color: Colors.blue.shade50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fastfood,
                              size: 60,
                              color: Colors.blue.shade200,
                            ),
                            SizedBox(height: 10),
                            Text(
                              item.title,
                              style: TextStyle(
                                color: Colors.blue.shade300,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                
                // Badge de precio
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.green.shade700.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      item.price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                
                // Badge de categoría
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item.category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Contenido de la tarjeta
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                
                SizedBox(height: 8),
                
                // Emojis
                Wrap(
                  spacing: 8,
                  children: item.emojis.map((emoji) => Text(
                    emoji,
                    style: TextStyle(fontSize: 20),
                  )).toList(),
                ),
                
                SizedBox(height: 12),
                
                // Descripción
                Text(
                  item.description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    height: 1.5,
                  ),
                ),
                
                SizedBox(height: 16),
                
                // Botón de agregar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showAddedToCartSnackbar(item.title, item.price);
                    },
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text('Agregar al Carrito'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showAddedToCartSnackbar(String itemName, String price) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green.shade300),
                SizedBox(width: 8),
                Text(
                  'Agregado al carrito',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Text('$itemName - $price'),
          ],
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.grey.shade800,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        action: SnackBarAction(
          label: 'Ver Carrito',
          textColor: Colors.blue.shade300,
          onPressed: () {
            // Aquí podrías navegar al carrito
          },
        ),
      ),
    );
  }
}