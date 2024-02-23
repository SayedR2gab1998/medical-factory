import 'package:flutter/material.dart';

class FactoryPhotoScreen extends StatelessWidget {
  const FactoryPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.8,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            image: const DecorationImage(
              image: AssetImage("assets/images/front.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Container(
        //   width: double.infinity,
        //   height: MediaQuery.of(context).size.height*0.7,
        //   decoration: BoxDecoration(
        //     color: Colors.black.withOpacity(0.4),
        //   ),
        //   child: const Center(child: Text('مصنع الأجهزة الطبية للقوات المسلحة',
        //     style: TextStyle(
        //       fontFamily: 'Cairo',
        //       fontSize: 44,
        //       color: Colors.white
        //     ),
        //   )),
        // ),
      ],
    );
  }
}
