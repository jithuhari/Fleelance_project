import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.cardImage,
    required this.cardText,
    required this.cardKg,
    required this.cardPrice,
  }) : super(key: key);

  final AssetImage cardImage;
  final String cardText;
  final String cardKg;
  final String cardPrice;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Image(height: 150, image: cardImage),
          Text(cardText,
          style:const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(cardKg,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14
          ),
          ),

          Row(
            children: [
              Text(cardPrice,
              style:const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
              ),

              const SizedBox(width: 60,),

              const Icon(
                Icons.add_box,
                color:Colors.green,
                size: 40,
                ),
            ],
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
