// lib/pages/plant_list_page.dart

import 'package:flutter/material.dart';
import '../models/plant.dart';
import 'add_plant_page.dart';

class PlantListPage extends StatefulWidget {
  @override
  _PlantListPageState createState() => _PlantListPageState();
}

class _PlantListPageState extends State<PlantListPage> {
  List<Plant> plants = []; // Daftar tumbuhan yang disimpan dalam memori

  void _addPlant(Plant plant) {
    setState(() {
      plants.add(plant); // Menambah data tumbuhan ke dalam list
    });
  }

  void _editPlant(int index, Plant updatedPlant) {
    setState(() {
      plants[index] = updatedPlant; // Memperbarui data tumbuhan yang sudah ada
    });
  }

  void _deletePlant(int index) {
    setState(() {
      plants.removeAt(index); // Menghapus data tumbuhan berdasarkan index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Tumbuhan')),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          final plant = plants[index];
          return ListTile(
            title: Text(plant.speciesName),
            subtitle: Text(plant.indonesianName),
            leading: Image.network(plant.imageUrl, width: 50, height: 50),
            onTap: () {
              // Menambahkan aksi untuk navigasi ke halaman edit jika diperlukan
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Navigasi ke halaman edit jika diperlukan
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () =>
                      _deletePlant(index), // Menghapus data tumbuhan
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPlantPage(onSave: _addPlant),
            ),
          );
        },
      ),
    );
  }
}
