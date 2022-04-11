import 'package:flutter/material.dart';
import '../../../models/ayat.dart';

class AyatItem extends StatelessWidget {
  AyatItem({Key? key, required this.ayat, required this.isId})
      : super(key: key);

  AyatResponse ayat;
  bool isId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '(${ayat.nomor}) ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: ayat.ar,
                style: TextStyle(fontSize: 24),
              ),
            ])),
            if (isId) Text(ayat.id!, style: TextStyle(fontSize: 12)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: 0.5,
              width: double.infinity,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
