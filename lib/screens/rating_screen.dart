import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  int _rating = 0; // Nilai penilaian dari 1 hingga 5
  String _comment = ''; // Kolom komentar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rating Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRatingStars(),
            const SizedBox(height: 16),
            _buildCommentField(),
            const SizedBox(height: 16),
            _buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Colors.yellow,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1;
            });
          },
        );
      }),
    );
  }

  Widget _buildCommentField() {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'Komentar',
        hintText: 'Masukkan komentar Anda',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        setState(() {
          _comment = value;
        });
      },
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: () {
        // Simpan data penilaian dan komentar
        _saveRatingData();
      },
      child: const Text('Simpan'),
    );
  }

  void _saveRatingData() {
    // Implementasi logika untuk menyimpan data, misalnya mengirim data ke server atau menyimpan lokal.
    // Di sini, kita hanya mencetak data sebagai contoh.
    print('Penilaian: $_rating bintang');
    print('Komentar: $_comment');
  }
}