import 'package:flutter/material.dart';
import 'package:updatte/new_trip/cities_sheet.dart';
import 'package:updatte/new_trip/location_dialog.dart';
import 'package:updatte/new_trip/screen_20_f2.dart';
import 'package:updatte/new_trip/screen_21_f2.dart';

import 'marsa_sheet.dart';

var marca = TextEditingController();
var city = TextEditingController();
var section = TextEditingController();

class NewTrip extends StatefulWidget {
  const NewTrip({Key? key}) : super(key: key);

  @override
  State<NewTrip> createState() => _NewTripState();
}

class _NewTripState extends State<NewTrip> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 126,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xff273474),
                    Color(0xff1A5AC4),
                  ])),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 50,
                          ),
                          const Text(
                            'اضافة رحلة جديدة',
                            style: TextStyle(
                              fontSize: 26,
                              color: Color(0xffffca34),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                            height: 29,
                            width: 29,
                            child: Image.asset(
                                'assets/images/chat-sms-svgrepo-com.png')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'ضع عنوان للرحلة',
                            style: TextStyle(color: Color(0xff303b7d)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: TextFormField(
                              style: const TextStyle(color: Color(0xff303b7d)),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'اختر قسم (مكان ادراج الرحلة)',
                                style: TextStyle(color: Color(0xff303b7d)),
                              ),
                              Text(
                                '*',
                                style: TextStyle(color: Color(0xffEA5141)),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    controller: section,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'حدد سعر الفرد ',
                                        style:
                                            TextStyle(color: Color(0xff303b7d)),
                                      ),
                                      Text(
                                        '*',
                                        style:
                                            TextStyle(color: Color(0xffEA5141)),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 172,
                                    height: 38,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xfff1f1f1),
                                    ),
                                    child: TextFormField(
                                      style: const TextStyle(
                                        color: Color(0xff303b7d),
                                      ),
                                      initialValue: '0',
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        suffixIcon: Text(
                                          'SAR',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'عدد الافراد ',
                                        style:
                                            TextStyle(color: Color(0xff303b7d)),
                                      ),
                                      Text(
                                        '*',
                                        style:
                                            TextStyle(color: Color(0xffEA5141)),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 172,
                                    height: 38,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xfff1f1f1),
                                    ),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xff303b7d)),
                                      initialValue: '1',
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ادراج الاعلان بموقعي',
                                    style: TextStyle(
                                        color: Color(0xff303b7d),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              const LocationDialog());
                                    },
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.my_location,
                                          color: Color(0xff303b7d),
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text('حدد موقعي الحالي',
                                            style: TextStyle(
                                              color: Color(0xff303b7d),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'اختيار موقع اخر',
                                    style: TextStyle(color: Color(0xff303b7d)),
                                  ),
                                  Container(
                                    width: 172,
                                    height: 38,
                                    padding: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xfff1f1f1),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                              enabled: false,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                              ),
                                              controller: city),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons
                                              .keyboard_arrow_down_outlined),
                                          onPressed: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (context) =>
                                                    const CitiesSheet());
                                          },
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'اختر المرسي',
                            style: TextStyle(color: Color(0xff303b7d)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                      enabled: false,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                      controller: marca),
                                ),
                                IconButton(
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) => const MSheet());
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'وصف',
                            style: TextStyle(color: Color(0xff303b7d)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 111,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: const TextField(
                                style: TextStyle(color: Color(0xff303b7d)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.date_range,
                                      color: Color(0xffffac26),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('تاريخ البدء',
                                        style: TextStyle(
                                            color: Color(0xff303b7d),
                                            fontSize: 18)),
                                  ],
                                ),
                                SizedBox(
                                  width: 88,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 35,
                                        top: 5,
                                        child: Text(
                                          "التاريخ",
                                          style: TextStyle(
                                              color: Color(0xff303b7d),
                                              fontSize: 11),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  const screen_20_f2());
                                        },
                                        child: Container(
                                          width: 88,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: const Color(0xff303b7d),
                                              width: 0.70,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 24,
                                                    height: 25,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(5),
                                                        topRight:
                                                            Radius.circular(0),
                                                        bottomLeft:
                                                            Radius.circular(5),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                      ),
                                                      color: Color(0xff303b7d),
                                                    ),
                                                    child: const Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // Positioned(
                                              //   left: 10,
                                              //   top: 9,
                                              //   child: Container(),
                                              //
                                              //   ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      color: Color(0xffffac26),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('ساعة البدء',
                                        style: TextStyle(
                                            color: Color(0xff303b7d),
                                            fontSize: 18)),
                                  ],
                                ),
                                SizedBox(
                                  width: 88,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 35,
                                        top: 5,
                                        child: Text(
                                          "وقت البدء",
                                          style: TextStyle(
                                              color: Color(0xff303b7d),
                                              fontSize: 11),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  const screen_20_f2());
                                        },
                                        child: Container(
                                          width: 88,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: const Color(0xff303b7d),
                                              width: 0.70,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 24,
                                                    height: 25,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(5),
                                                        topRight:
                                                            Radius.circular(0),
                                                        bottomLeft:
                                                            Radius.circular(5),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                      ),
                                                      color: Color(0xff303b7d),
                                                    ),
                                                    child: const Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // Positioned(
                                              //   left: 10,
                                              //   top: 9,
                                              //   child: Container(),
                                              //
                                              //   ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.date_range,
                                      color: Color(0xffffac26),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('تاريخ الانتهاء',
                                        style: TextStyle(
                                            color: Color(0xff303b7d),
                                            fontSize: 18)),
                                  ],
                                ),
                                SizedBox(
                                  width: 88,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 35,
                                        top: 5,
                                        child: Text(
                                          "التاريخ",
                                          style: TextStyle(
                                              color: Color(0xff303b7d),
                                              fontSize: 11),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  const screen_21_f2());
                                          //Navigator.push(context, MaterialPageRoute(builder: (context)=> screen_20_f2()));
                                        },
                                        child: Container(
                                          width: 88,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: const Color(0xff303b7d),
                                              width: 0.70,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 24,
                                                    height: 25,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(5),
                                                        topRight:
                                                            Radius.circular(0),
                                                        bottomLeft:
                                                            Radius.circular(5),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                      ),
                                                      color: Color(0xff303b7d),
                                                    ),
                                                    child: const Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // Positioned(
                                              //   left: 10,
                                              //   top: 9,
                                              //   child: Container(),
                                              //
                                              //   ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xfff1f1f1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      color: Color(0xffffac26),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('ساعة الانتهاء',
                                        style: TextStyle(
                                            color: Color(0xff303b7d),
                                            fontSize: 18)),
                                  ],
                                ),
                                SizedBox(
                                  width: 88,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      const Positioned(
                                        left: 35,
                                        top: 5,
                                        child: Text(
                                          "وقت الانتهاء",
                                          style: TextStyle(
                                              color: Color(0xff303b7d),
                                              fontSize: 11),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  const screen_21_f2());
                                          //Navigator.push(context, MaterialPageRoute(builder: (context)=> screen_20_f2()));
                                        },
                                        child: Container(
                                          width: 88,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: const Color(0xff303b7d),
                                              width: 0.70,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 24,
                                                    height: 25,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(5),
                                                        topRight:
                                                            Radius.circular(0),
                                                        bottomLeft:
                                                            Radius.circular(5),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                      ),
                                                      color: Color(0xff303b7d),
                                                    ),
                                                    child: const Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        width: double.infinity,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xffeb970c), Color(0xffffac26)],
                          ),
                        ),
                        child: OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0))),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'ارسال',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
