import 'package:flutter/material.dart';

class CitiesSheet extends StatefulWidget {
  const CitiesSheet({Key? key}) : super(key: key);

  @override
  State<CitiesSheet> createState() => _CitiesSheetState();
}

class _CitiesSheetState extends State<CitiesSheet> {
  int value = 1;
  int val = 1;
  List<String> cities_list = [
    "الرياض",
    "جده",
    'مكه',
    'الدمام',
    'المدينة المنورة',
    'القصيم'
  ];
  List<String> cities_list_search = [
    "الرياض",
    "جده",
    'مكه',
    'الدمام',
    'المدينة المنورة',
    'القصيم'
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                child: TextField(
                  // controller: controller,
                  onChanged: (value) {
                    cities_list_search.clear();

                    for (var x in cities_list) {
                      if (x.contains(value)) {
                        if (x.contains(value)) {
                          cities_list_search.add(x);
                        }
                      }
                    }
                    setState(() {});
                  },
                  style: const TextStyle(color: Color(0xff303b7d)),
                  decoration: InputDecoration(
                    hintText: 'ابحث باسم المدينة',
                    hintStyle: const TextStyle(
                      fontSize: 18,
                    ),
                    prefixIcon: IconButton(
                      padding: const EdgeInsets.only(bottom: 10),
                      icon: const Icon(
                        Icons.search_sharp,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 5*65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfff3f4f6),
                ),
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        cities(index + 1, cities_list_search[index]),
                    separatorBuilder: (context, index) => Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                    itemCount: cities_list_search.length),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff303b7d),
                  ),
                  child: const Center(
                      child: Text(
                    'تطبيق',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RadioListTile<int> cities(
    int value,
    String title,
  ) {
    return RadioListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff303b7d),
              fontSize: 15,
            ),
          ),
        ],
      ),
      value: value,
      groupValue: val,
      onChanged: (value) {
        setState(() {
          val = int.parse("$value");
        });
      },
      activeColor: const Color(0xff303b7d),
    );
  }


// RadioListTile buildRadioListTile(val, txt, ){
//   return RadioListTile(
//     title: Text(txt,style: const TextStyle(color: Color(0xff303b7d)),),
//       value: val,
//       groupValue: _radioValue,
//       onChanged: (value){
//     setState(() {
//       _radioValue=value;
//     });
//       });
//
//
// }


}
