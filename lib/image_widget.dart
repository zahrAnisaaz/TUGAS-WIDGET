import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget{
  const ImageWidget({super.key});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('Assets/WhatsApp Image 2024-05-13 at 10.40.51_67f08f82.jpg')
        ),
        
      ],
    );
  }
}
