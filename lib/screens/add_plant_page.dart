// lib/pages/add_plant_page.dart

import 'package:flutter/material.dart';
import '../models/plant.dart';

class AddPlantPage extends StatefulWidget {
  final Function(Plant) onSave; // Callback untuk menyimpan data tumbuhan

  AddPlantPage({required this.onSave});

  @override
  _AddPlantPageState createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {
  final _speciesController = TextEditingController();
  final _indonesianController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageUrlController = TextEditingController();

  void _addPlant() {
    final plant = Plant(
      speciesName: _speciesController.text,
      indonesianName: _indonesianController.text,
      description: _descriptionController.text,
      imageUrl: _imageUrlController.text, // URL gambar tumbuhan
    );

    widget.onSave(plant); // Menyimpan data tumbuhan ke halaman sebelumnya
    Navigator.pop(context); // Kembali ke halaman daftar tumbuhan
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Tumbuhan Baru')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _speciesController,
              decoration: InputDecoration(labelText: 'Nama Spesies'),
            ),
            TextField(
              controller: _indonesianController,
              decoration: InputDecoration(labelText: 'Nama Indonesia'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            TextField(
              controller: _imageUrlController,
              decoration: InputDecoration(labelText: 'URL Gambar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addPlant,
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
