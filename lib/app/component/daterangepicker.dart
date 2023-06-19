import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class DateRangepicker extends StatelessWidget {
  const DateRangepicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(color: HexColor('#CFCFCF')),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      margin: const EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ], color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));
                      },
                      icon: const Icon(Icons.keyboard_arrow_down)),
                ),
                SizedBox(width: 5.w),
                const Text("01 avril 2023")
              ],
            ),
            Row(
              children: [
                const Text("01 avril 2023"),
                SizedBox(width: 5.w),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ], color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () async {
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));
                      },
                      icon: const Icon(Icons.keyboard_arrow_up)),
                ),
              ],
            ),
          ]),
    );
  }
}
