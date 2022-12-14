import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/help_faq_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Constants/constants.dart';
import '../../../../Widgets/backButton.dart';
import '../../../../Widgets/my_text.dart';

class HelpFaqView extends GetView<HelpFaqView> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final sp = MediaQuery.of(context).textScaleFactor;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: MyBackButton(),
            title: MyText(
              text: 'Help & FAQ’s',
              size: 16 * sp,
              weight: ksix,
              color: knavy,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w / 20,
                vertical: w / 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _getData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ExpandablePanel(
                          theme: ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 10,
                              top: 5,
                            ),
                            child: MyText(
                              text: '${_getData[index].header}',
                              size: 16 * sp,
                              weight: ksix,
                              color: knavy,
                            ),
                          ),
                          collapsed: Text(''),
                          expanded: MyText(
                            text: _getData[index].expand,
                            weight: kfour,
                            color: Color(0xff3D3D3D),
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: ExpandableThemeData(crossFadePoint: 0),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: Color(0xffEDEDED),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class data {
  String header;
  String expand;

  data({required this.header, required this.expand});
}

List<data> _getData = [
  data(
      header: 'How do I make an appointment?',
      expand:
          'Appointments are scheduled on a first come, first serve basis with respect to urgency and your medical condition.'),
  data(
      header: 'What do I need to bring with me to the hospital?',
      expand:
          'Appointments are scheduled on a first come, first serve basis with respect to urgency and your medical condition.'),
  data(
      header: 'What services do you offer?',
      expand:
          'Appointments are scheduled on a first come, first serve basis with respect to urgency and your medical condition.'),
  data(
      header: 'What are the charges for a service?',
      expand:
          'Appointments are scheduled on a first come, first serve basis with respect to urgency and your medical condition.'),
  data(
      header: 'Can visitors/family come with me to the hospital?',
      expand:
          'Appointments are scheduled on a first come, first serve basis with respect to urgency and your medical condition.'),
];
