
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class screen_20_f2 extends StatefulWidget {
  const screen_20_f2({Key? key}) : super(key: key);

  @override
  State<screen_20_f2> createState() => _screen_20_f2State();
}

class _screen_20_f2State extends State<screen_20_f2> {

  DateTime _chosenDateTime=DateTime.now();//+++++++++++++

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "حدد تاريخ ووقت بدأ الرحلة",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff303b7d),
                  fontSize: 25,
                  fontFamily: "CoconÆ Next Arabic",
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " ${DateFormat.MMMMEEEEd().format(_chosenDateTime!)}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xaf303a7d),
                      fontSize: 17,
                      fontFamily: "CoconÆ Next Arabic",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    width: 1,
                    height: 15,
                    color: Color(0xaf303a7d),
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "${ DateFormat.jm().format(_chosenDateTime!)}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xaf303a7d),
                      fontSize: 17,
                      fontFamily: "CoconÆ Next Arabic",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                height: 290,

                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  child: CupertinoDatePicker(
                      use24hFormat: false,
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (val) {
                        _chosenDateTime = val;
                        print (_chosenDateTime);
                        setState(() {
                        });
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                width: 170,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff303b7d),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: const Text('الغاء',style: TextStyle(color: Colors.white),),

                ),
              ),
              Container(
                width: 170,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff303b7d),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: const Text('استكمال',style: TextStyle(color: Colors.white),),

                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
