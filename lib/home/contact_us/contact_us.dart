import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            defaultButton(
              image: 'assets/images/linkedin.png',
              text: 'LinkedIn',
              onPressed: (){}
            ),
            defaultButton(
                image: 'assets/images/facebook.png',
                text: 'facebook',
                onPressed: (){}
            ),
            defaultButton(
                image: 'assets/images/whatsapp.png',
                text: 'whatsApp',
                onPressed: (){}
            ),
            defaultButton(
                image: 'assets/images/twitter.png',
                text: 'twitter',
                onPressed: (){}
            ),

          ],
        ),
      ),
    );
  }
  Widget defaultButton({
    Color background = Colors.blue,
    bool isUpperCase = true,
    double radius = 5.0,
    required String text,
    required String image,
    required Function()? onPressed,
  }) =>
      InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: background),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  isUpperCase ? text.toUpperCase() : text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                const SizedBox(width: 8.0,),
                Image.asset(image),
              ],
            ),
          ),
        ),
      );
}
