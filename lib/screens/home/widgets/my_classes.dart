import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants/constants.dart';
import '../../../data/today_class_list.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({Key? key}) : super(key: key);

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  late DateTime todayDate;

  @override
  void initState() {
    todayDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.45,
      // padding: EdgeInsets.all(14),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            offset: Offset(1.3, 2.5),
            blurRadius: 6,
          ),
        ],
        border: Border.all(
          width: 1.1,
          color: kGrey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'My Classes',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Divider(
              color: kGrey,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: kGrey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(
                      vertical: 2,
                    ),
                    child: const Icon(Icons.today),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    DateFormat.yMMMMd('en_US').format(todayDate),
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: kGrey,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.68,
              child: ListView.separated(
                padding: const EdgeInsets.all(5.0),
                itemBuilder: (context, index) => ListTile(
                  leading: Text('${todayClassList[index].timeRange}'),
                  title: Text(
                    '${todayClassList[index].subjectCode} | ${todayClassList[index].subject}',
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  subtitle: Text('${todayClassList[index].teacherName}'),
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: kGrey,
                ),
                itemCount: todayClassList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
