import 'package:flutter/material.dart';
import '../../../models/surah.dart';

class SuratItem extends StatelessWidget {
  const SuratItem({
    Key? key,
    required this.surat,
    required this.onTap,
    required this.onTapAudio,
  }) : super(key: key);
  final SurahResponse surat;
  final VoidCallback onTap;
  final VoidCallback onTapAudio;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
              '(${surat.nomor})',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: surat.nama,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' (${surat.asma})',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      )),
                ])),
                Text('${surat.arti}'),
                Text(
                  'ayat (${surat.ayat})',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
              ],
            ),
            GestureDetector(
              onTap: onTapAudio,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue, width: 3),
                  image: DecorationImage(
                      image: AssetImage("assets/images/play.png")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
