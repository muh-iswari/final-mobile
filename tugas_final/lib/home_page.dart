import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
              child: Image.asset('assets/logo.png',
                  width: 200,
                  height: 200), // Ganti dengan gambar yang diinginkan
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: SizedBox(
                width: 240, // Ubah lebar tombol
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        Color.fromARGB(255, 254, 212, 140), // Warna teks tombol
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.zero, // Menghilangkan radius sudut
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0), // Atur padding tombol
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20, // Ukuran teks
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
