import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:getwidget/getwidget.dart';
import 'package:simple_shadow/simple_shadow.dart';

class FAQsView extends StatefulWidget {
  const FAQsView({Key? key}) : super(key: key);

  @override
  State<FAQsView> createState() => _FAQsViewState();
}

class _FAQsViewState extends State<FAQsView> {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SimpleShadow(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[50],
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Orders',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 1',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 2',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 3',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 4',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 5',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 6',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 7',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 8',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 9',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 10',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 11',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
          GFAccordion(
            collapsedTitleBackgroundColor: Color(0xffEDEDED),
            expandedTitleBackgroundColor: Color(0xffFF4E00),
            collapsedIcon: Icon(FontAwesome.angle_down),
            expandedIcon: Icon(FontAwesome.angle_up),
            title: 'Question 12',
            content:
                'Turpis architecto morbi, senectus, hac ratione facere nonummy nascetur fugiat! Inceptos explicabo. Aliquid non aut malesuada labore lobortis felis sociis.',
          ),
        ]),
      ),
    ));
  }
}
