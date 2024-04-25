import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? "gambar kosong"),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () async {
              print('bebek');
              gantiNama("wek wek");
              await player.setAsset("aset_media/suara/bebek.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/bebek.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('duck');
              gantiNama('bebek');
            },
            child: Card(
              child: Image.asset("aset_media/gambar/bebekk.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("bebekk");
              gantiNama("duck");
            },
            child: Card(
              child: Image.asset("aset_media/gambar/duck.jpg"),
            ),
          ),
          Card(),
          Card(),
          Card(),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
