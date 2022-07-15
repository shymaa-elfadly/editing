import 'package:flutter/material.dart';

class LocationDialog extends StatelessWidget {
  const LocationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), //this right here
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 207,
                height: 166,
                child: Image.asset('assets/images/Group 39827.png')),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'السماح بالموقع',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color : Color(0xff303b7d),),
            ),
            const Text(
              'نحتاج الى السماح بالاطلاع علي موقعك لعرض ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color : Color(0xff303b7d),),
            ),
            const Text(
              'المراسي المتواجدة بالمنطقة المحيطة بك ',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color : Color(0xff303b7d),),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Container(
                width: 256,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(255, 159, 0, 1),
                ),
                child: const Center(
                    child: Text(
                  'السماح',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Container(
                width: 256,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color : Color.fromRGBO(255, 159, 0, 0.3499999940395355),
                ),
                child: const Center(
                    child: Text(
                  'عدم السماح',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
