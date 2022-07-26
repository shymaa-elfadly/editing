import 'package:flutter/material.dart';

class textformfield_ extends StatelessWidget {
  final VoidCallback? onpressed;
  final bool? enabled;
  final TextEditingController controller;
  final ValueChanged? on_change;
  const textformfield_({
    this.enabled=true,
    this.onpressed,
    required this.controller,
    this.on_change,
    Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xfff3f4f6),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: 500,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  enabled: enabled,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  controller: controller,
                  onChanged: on_change,

                ),
              ),
              IconButton(icon: Icon(Icons.keyboard_arrow_down_outlined), onPressed: onpressed,),

            ],
          ),
        ),
      ),
    );
  }
}
