

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.1,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff070F2B),
              Color(0xff535C91),
              Color(0xff9290C3),
            ],
          ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('إدارة الخدمات الطبية',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 24
              ),
            ),
            const Text('مصنع الأجهزة الطبية للقوات المسلحة',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                  fontSize: 24
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/images/logo.png',width: 100,),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.menu,color: Colors.white,)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

