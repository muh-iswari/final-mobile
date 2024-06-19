import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 33.0), // Tambahkan margin 33 dari atas
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Color.fromARGB(255, 254, 212, 140), // Warna latar kotak merah
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Teks di kiri dan avatar di kanan
                  children: [
                    const Text(
                      'Hi Muhammad Iswari',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Warna teks putih
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpg'), // Ganti dengan path gambar avatar Anda
                      radius: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            const Text(
              'Tempat Favorit',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildRoundedImage('assets/img1.jpg'),
                    const SizedBox(width: 10),
                    buildRoundedImage('assets/img2.jpg'),
                    const SizedBox(width: 10),
                    buildRoundedImage('assets/img3.jpg'),
                    const SizedBox(width: 10),
                    buildRoundedImage('assets/img4.jpg'),
                    const SizedBox(width: 10),
                    buildRoundedImage('assets/img5.jpg'),
                    const SizedBox(width: 10),
                    buildRoundedImage('assets/img6.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRoundedImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
      child: Image.asset(
        imagePath,
        width: 300,  // Set a fixed width
        height: 450, // Set a fixed height
        fit: BoxFit.cover,
      ),
    );
  }
}
