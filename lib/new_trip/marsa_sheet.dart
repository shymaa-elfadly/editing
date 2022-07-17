
import 'package:flutter/material.dart';
import 'package:updatte/new_trip/new_trip.dart';

class MSheet extends StatefulWidget {
  const MSheet({Key? key}) : super(key: key);

  @override
  State<MSheet> createState() => _MSheetState();
}

class _MSheetState extends State<MSheet> {
  //var marca = TextEditingController();
  String? place;
  String? address;
  String? distance;
  List<String> list_place=['مرسي الاندلس','مرسي البحر الاحمر','مرسي الاندلس','مرسي الاندلس','مرسي الاندلس'];
  List<String> list_place_search=['مرسي الاندلس','مرسي البحر الاحمر','مرسي الاندلس','مرسي الاندلس','مرسي الاندلس'];
  List<String> list_distance=["4.4","4.4","4.4","4.4","4.4"];
  List<String> list_distance_search=["4.4","4.4","4.4","4.4","4.4"];
  List<String> list_address=["جدة 360 شارع الملك فهد طريق الصفا 854","جدة 360 شارع الملك فهد طريق الصفا 854","جدة 360 شارع الملك فهد طريق الصفا 854",'جدة 360 شارع الملك فهد طريق الصفا 854','جدة 360 شارع الملك فهد طريق الصفا 854'];
  List<String> list_address_search=["جدة 360 شارع الملك فهد طريق الصفا 854","جدة 360 شارع الملك فهد طريق الصفا 854","جدة 360 شارع الملك فهد طريق الصفا 854",'جدة 360 شارع الملك فهد طريق الصفا 854','جدة 360 شارع الملك فهد طريق الصفا 854'];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20),
        child: Wrap(
          children: [
            Container(

              width: double.infinity,
              height: 44,
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xfff1f1f1),
              ),
              child:  TextField(
                onChanged: (value){
                  list_place_search.clear();
                  list_address_search.clear();
                  list_distance_search.clear();
                  for(var x in list_place){
                    if (x.contains(value)){
                      if (x.contains(value)){list_place_search.add(x);}
                    }
                  }

                  for(var x in list_distance){
                    list_distance_search.add(x);
                  }

                  for(var x in list_address){
                    list_address_search.add(x);
                  }
                  setState(() {

                  });

                },
                style: const TextStyle(color: Color(0xff303b7d)),
                decoration: InputDecoration(
                  hintText: 'ابحث باسم المرسي',
                  hintStyle: const TextStyle(fontSize: 18,),
                  prefixIcon:  IconButton(
                    padding: const EdgeInsets.only(bottom: 10),
                    icon: const Icon(Icons.search_sharp,size: 25,), onPressed: () {  },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(
                    children: const [
                      Text('نتائج بشأن "', style: TextStyle(color: Color(0xff303b7d)),),
                      Text('مرسي', style: TextStyle(color: Color.fromRGBO(255, 159, 0, 1),),),
                      Text('"', style: TextStyle(color: Color(0xff303b7d)),),
                    ],
                  ),
                  const Text('نتيجة 275', style: TextStyle(color: Color.fromRGBO(255, 159, 0, 1),),),

                ],),
            ),
            RadioListTile(
              contentPadding: EdgeInsets.zero,
                activeColor:  Color.fromRGBO(255, 159, 0, 1),
                title: const Text('الادراج بجميع المراسي',style: TextStyle(color: Color.fromRGBO(255, 159, 0, 1),),),
                value: 0,
                groupValue: 0,
                onChanged: (value){}),




            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: double.infinity,
                height: double.maxFinite,
                child: ListView.separated(itemBuilder: (context, index) =>marsa(index,list_place_search[index],list_address_search[index],list_distance_search[index]), separatorBuilder: (context,index)=>SizedBox(height: 15,), itemCount: list_place_search.length),
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         SizedBox(
            //             height: 48,
            //             width: 48,
            //             child: Image.asset('assets/images/Group 39809.png')),
            //         const SizedBox(width: 10,),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children:  [
            //             Text('$place',style: TextStyle(color: Color(0xff303b7d),fontSize: 20),),
            //             Text('$address',style: TextStyle(color: Color(0xff303b7d),),)
            //           ],
            //         ),
            //       ],
            //     ),
            //
            //      Directionality(textDirection: TextDirection.ltr,
            //         child: Text('$distance',style: TextStyle(color: Color(0xff303b7d),),))
            //   ],),

          ],
        ),
      ),
    );
  }

  GestureDetector marsa(int index ,String place, String address , String distance) {
    return GestureDetector(
      onTap: (){
        marca.text=list_place_search[index];
        Navigator.pop(context);

      },
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            height: 48,
                            width: 48,
                            child: Image.asset('assets/images/Group 39809.png')),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text('$place',style: TextStyle(color: Color(0xff303b7d),fontSize: 20),),
                            Text('$address',style: TextStyle(color: Color(0xff303b7d),),)
                          ],
                        ),
                      ],
                    ),

                    Directionality(textDirection: TextDirection.ltr,
                        child: Text('$distance',style: TextStyle(color: Color(0xff303b7d),),))
                  ],),
    );
  }
}
