import 'package:flutter/material.dart';
import 'package:medicalfacory/home/about_factory/about_factory.dart';
import 'package:medicalfacory/home/factory_photo/factory_photo.dart';
import 'package:medicalfacory/home/factory_products/factory_products.dart';
import 'package:medicalfacory/home/footer/footer.dart';
import 'package:medicalfacory/home/nav_bar/nav_bar.dart';
import 'package:medicalfacory/style/icon_broken.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leadingWidth: 250,
          toolbarHeight: 100,
          flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff070F2B),
                Color(0xff1B1A55),
                Color(0xff535C91),
              ]),
            ),
          ),
          leading: const Center(
            child: Text('إدارة الخدمات الطبية',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Cairo',
                color: Colors.white
              ),
            ),
          ),
          title: const Text('مصنع الأجهزة الطبية للقوات المسلحة',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Cairo',
                color: Colors.white
            ),
          ),
          actions: [
            Row(
              children: [
                Image.asset('assets/images/logo.png'),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.menu,color: Colors.white),
                )
              ],
            ),
          ],
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              //NavBar(),
              FactoryPhotoScreen(),
              AboutFactory(),
              FactoryProducts(),
              SizedBox( height: MediaQuery.of(context).size.height*0.02,),
              FooterScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

