import 'package:flutter/material.dart';
import 'class.dart';

class TarifDetayi extends StatelessWidget {
  final Tarif tarif;

  TarifDetayi({required this.tarif});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tarif.adi),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tarif.adi,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              tarif.malzemeler,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              tarif.yapimi,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
