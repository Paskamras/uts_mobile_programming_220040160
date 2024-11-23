// lib/models/plant.dart

class Plant {
  String speciesName; // Nama spesies
  String indonesianName; // Nama Indonesia
  String description; // Deskripsi tumbuhan
  String imageUrl; // URL atau path gambar tumbuhan

  Plant({
    required this.speciesName,
    required this.indonesianName,
    required this.description,
    required this.imageUrl,
  });

  // Convert to JSON (untuk penggunaan di dalam aplikasi atau jika dibutuhkan untuk serialisasi)
  Map<String, dynamic> toJson() {
    return {
      'speciesName': speciesName,
      'indonesianName': indonesianName,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  // Convert from JSON (berguna jika menggunakan database atau API)
  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      speciesName: json['speciesName'],
      indonesianName: json['indonesianName'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}
