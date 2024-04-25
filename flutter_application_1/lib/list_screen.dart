import 'package:flutter/material.dart';
import 'package:flutter_application_1/kalkulator_screen.dart';
import 'package:flutter_application_1/nilaiakhir_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // awal navigasi
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => KalkulatorScreen(),
                ),
              );
              //akhir navigasi
            },
            child: Text('kalkulator'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Chara anime')),
          ElevatedButton(
            onPressed: () {
              // awal navigasi
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NilaiAkhirScreen(),
                ),
              );
              //akhir navigasi
            },
            child: Text('Nilai Akhir'),
          ),
        ],
      ),
    );
  }
}
