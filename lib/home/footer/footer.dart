

import 'package:flutter/material.dart';
import 'package:medicalfacory/home/contact_us/contact_us.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
     decoration: const BoxDecoration(
       gradient: LinearGradient(
         begin: Alignment.topCenter,
         end: Alignment.bottomCenter,
         colors: [
           Color(0xff070F2B),
           Color(0xff1B1A55),
           Color(0xff535C91),
         ],
       ),
     ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('رؤية المصنع',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CairoBold',
                            color: Colors.white
                          ),
                        ),
                        Text('سد إحتياجات مستشفيات القوات المسلحة ومستشفيات وزارة الصحة والسوق المحلي من الأتي (الآلآت الجراجية - الآثاث الطبي - الشرائح والمسامير لجراحة العظام '
                            '- ترابيزة العمليات - أجهزة التعقيم - وحدات رأس المريض - مهمات شبكة الغازات - تروللي العمليات - الآلآت المناظير الطبية)',
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            height: 2,
                            fontSize: 22,
                            fontFamily: 'Cairo',
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                       Expanded(
                         flex: 2,
                         child: ContactUsScreen(),
                       ),
                       // ContactUsScreen(),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('رسالة المصنع',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CairoBold',
                              color: Colors.white
                          ),
                        ),
                        Text(' تهدف رسالة المصنع الي توفير منتجات ذات جودة عالية وبسعر منافس وتدريب الضباط والراتب العالى والعاملين المدنيين على نظم التصنيع المتطوره حتى يصبح المصنع قادر '
                            'على تصنيع كافة التجهيزات والالات الطبيه بجوده عاليه منافسه للصناعات المناظره والقدره على تصدير فائض المنتجات للخارج',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 2,
                              fontSize: 22,
                              fontFamily: 'CairoBold',
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('جميع الحقوق محفوظة لدي مصنع الأجهزة الطبية للقوات المسلحة',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 24
              ),
            ),
          ),
        ],
      ),
    );
  }
}
