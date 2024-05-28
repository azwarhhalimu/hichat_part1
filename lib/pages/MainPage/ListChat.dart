import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  const ListChat({super.key});

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  List<Map<String, dynamic>> chat = [
    {
      "nama": "Nisa",
      "foto": "1.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Fatimah",
      "foto": "3.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Desi",
      "foto": "2.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Ukti",
      "foto": "4.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Nisa",
      "foto": "5.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Nisa",
      "foto": "6.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Nisa",
      "foto": "7.jpg",
      "chat": "Halo, assalamuilkm...",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Ust. Abdul Somat",
      "foto": "6.jpg",
      "chat": "Tobat yaa, ingat mati bisa datang kapan saja",
      "tanggal": "28 Mey"
    },
    {
      "nama": "Ust. Hairuddin",
      "foto": "7.jpg",
      "chat": "Jangan lupa solat...",
      "tanggal": "28 Mey"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: chat.map((e) {
        return Container(
          child: ListTile(
            trailing: Text(
              e['tanggal'],
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45,
              ),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset("assets/" + e['foto']),
            ),
            title: Text(e["nama"]),
            subtitle: Text(e["chat"]),
          ),
        );
      }).toList(),
    );
  }
}
