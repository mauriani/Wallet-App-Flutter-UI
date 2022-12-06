import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubName;

  const MyListTile(
      {super.key,
      required this.iconImagePath,
      required this.tileName,
      required this.tileSubName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //icon
              Container(
                  height: 80,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(iconImagePath)),
              const SizedBox(width: 20),
              Column(
                // alinhou a direita
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(tileName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 20)),
                  const SizedBox(height: 8),
                  Text(tileSubName,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.grey[500])),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
