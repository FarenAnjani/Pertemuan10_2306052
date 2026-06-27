import 'package:flutter/material.dart';
import 'package:pertemuan10_2306052/models/product_model.dart';
import 'dart:convert'; 


class ProductDetailPage extends StatelessWidget {
  // membuat var untuk menampilkan data produk yang dipilih
  final ProductModel product;

  // constructor
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // PERBAIKAN: Sebelumnya '.start'
          children: [
            // PERBAIKAN MODUL LANGKAH 11: Menambahkan kode untuk menampilkan gambar produk
            product.image.isNotEmpty
                ? Image.memory(
                    base64Decode(product.image),
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  )
                : const Icon(Icons.image, size: 250),
            const SizedBox(height: 20), 
            Text(
              product.name, 
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold 
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Rp ${product.price}",
              style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}