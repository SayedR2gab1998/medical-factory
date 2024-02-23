import 'package:flutter/material.dart';

class AboutFactory extends StatelessWidget {
  const AboutFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      decoration: const BoxDecoration(
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 80,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.5,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff070F2B),
                        Color(0xff535C91),
                        Color(0xff9290C3),
                      ],
                    )
                ),
                child: const Center(
                  child: Text('نبذة عن المصنع',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 22,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            const Flexible(
              child: Text('مصنع الأجهزة الطبية للقوات المسلحة هو مصنع مصري متخصص في تصنيع وصيانة الأجهزة الطبية المختلفة '
                  '\n تم تخصيص مساحة 19 فدان و 18 قيراط و 18.04 سهم لصالح إدارة الخدمات الطبية تشمل المصنع الحالي وأراضي محيطة تستغل\n للرؤية المستقبلية لإنتاج الأجهزة والمعدات الطبية',
                style: TextStyle(
                  height: 1.5,
                  fontSize: 24,
                  fontFamily: 'Cairo'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
