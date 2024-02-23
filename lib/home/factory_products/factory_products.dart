import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String image;
  final String title;
  final String info;
  ProductModel({
    required this.image,
    required this.title,
    required this.info
  });
}


class FactoryProducts extends StatefulWidget {
  const FactoryProducts({super.key});

  @override
  State<FactoryProducts> createState() => _FactoryProductsState();
}

class _FactoryProductsState extends State<FactoryProducts> {



  List<ProductModel> boarding = [
    ProductModel(
        image: 'assets/images/P1.png',
        title: 'سرير كشف',
        info: 'مصنوع من الحديد مطلي الكتروستيتك أبعاد 195سم * 58سم ارتفاع 65سم \n '
            'الظهر قابل للميل بدرجات مختلفة 15 و 30 و 45 درجه\n مزود بسلم 1 درجه 25 سم * 45 سم ارتفاع 22 سم وسلم 2 درجه 40سم * 45 سم ارتفاع 43 سم',
    ),
    ProductModel(
        image: 'assets/images/P2.png',
        title: 'سرير كشف نسا',
        info: 'مصنوع من حديد مطلي الكتروستيتك\n أبعاد 180سم * 60سم ارتفاع 95سم\n الظهر والرجل قابلين للارتفاع'
    ),
    ProductModel(
        image: 'assets/images/P3.png',
        title: 'تروللي',
        info: 'مصنوع من الاستنلس ستيل 304\n اعاد 188سم * 55سم \n قابل للارتفاع من 57 الي 87 سم'
    ),
    ProductModel(
        image: 'assets/images/P4.png',
        title: 'حوض تعقيم',
        info: 'مصنوع من الاستنلس ستيل 304 تخانة 1.5 مم \n أبعاد 94سم * 57سم ارتفاع 110 سم \n مزود بحنفية photo cell و dispenser '
    ),
  ];
bool hover = false;
  Widget buildCustomProductCard(ProductModel model,){
    return Card(
      elevation: 30,
      shadowColor: Colors.black,
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
                child: Image.asset(model.image),
              ),
              Center(
                child: Text(model.title,
                  style: const TextStyle(
                    fontFamily: 'CairoBold',
                    fontSize: 24,
                    color:  Color(0xff070F2B),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Expanded(
                child: Center(
                  child: Text(model.info,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Cairo',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    List<Widget> cardItems = [];


    for(int i =0;i<boarding.length;i++){
      cardItems.add(
        buildCustomProductCard(boarding[i]),
      );
    }




    return SizedBox(
      height: MediaQuery.of(context).size.height*0.9,
      child: Column(
        children: [
          const Text('منتجات المصنع',
            style: TextStyle(
              fontFamily: 'CairoBold',
              fontSize: 28,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.06,),
          CarouselSlider(
            items: cardItems,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height*0.6,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              reverse: false,
              viewportFraction: 0.3,
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(seconds: 2),
            ),
          ),
        ],
      ),
    );
  }
}