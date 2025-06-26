import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Cari di Telyu Consign',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
          ),
        ),
        actions: const [
          Icon(Icons.email_outlined, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.person_outline, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(12),
        children: [
          // Banner
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage("assets/banner2.png"), // ganti sesuai banner
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Login Button
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.login),
            label: const Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Barang Baru Nih
          const Text(
            "Barang Baru Nih!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          SizedBox(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(), // Efek scroll seperti iOS
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: const [
                // Dibungkus Padding agar antar kartu ada jarak
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "Asus ROG Flow Z17 i7...",
                    price: "Rp 15.300.000",
                    condition: "Good Condition",
                    imageAsset: "assets/laptop.jpg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "iPhone 14 Starlight 256GB",
                    price: "Rp 16.500.000",
                    condition: "Good Condition",
                    imageAsset: "assets/iphone.jpg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "Samsung Z Flip 512GB",
                    price: "Rp 17.999.000",
                    condition: "Good Condition",
                    imageAsset: "assets/iphone.jpg",
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Barang Baru Nih!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          SizedBox(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(), // Efek scroll seperti iOS
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: const [
                // Dibungkus Padding agar antar kartu ada jarak
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "Asus ROG Flow Z17 i7...",
                    price: "Rp 15.300.000",
                    condition: "Good Condition",
                    imageAsset: "assets/laptop.jpg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "iPhone 14 Starlight 256GB",
                    price: "Rp 16.500.000",
                    condition: "Good Condition",
                    imageAsset: "assets/iphone.jpg",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: ProductCard(
                    title: "Samsung Z Flip 512GB",
                    price: "Rp 17.999.000",
                    condition: "Good Condition",
                    imageAsset: "assets/iphone.jpg",
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Kategori
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Kategori",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Lihat Semua",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CategoryCard(title: "Laptop", imageAsset: "assets/laptop.jpg"),
              CategoryCard(title: "Lemari", imageAsset: "assets/lemari.jpg"),
              CategoryCard(
                title: "Smartphone",
                imageAsset: "assets/iphone.jpg",
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

// Card Produk
class ProductCard extends StatelessWidget {
  final String title, price, condition, imageAsset;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.condition,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            height: 90,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 8),
          Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: const [
              Icon(Icons.check_circle, size: 16, color: Colors.green),
              SizedBox(width: 4),
              Text("Good Condition", style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

// Kategori Card
class CategoryCard extends StatelessWidget {
  final String title, imageAsset;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(imageAsset, height: 60),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
