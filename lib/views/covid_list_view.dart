import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_asm/controller/covid_list_controller.dart';
import 'package:test_mobile_asm/helpers.dart';
import 'package:test_mobile_asm/styles.dart';
import 'package:test_mobile_asm/views/covid_details_view.dart';

class CovidListView extends GetView<CovidListController> {
  const CovidListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.isTrue) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                const Center(
                    child: Text(
                  'Covid Tracking',
                  style: sTitleViewTextStyle,
                )),
                DataTable(
                  columnSpacing: 10,
                  showCheckboxColumn: false,
                  columns: const [
                    DataColumn(label: Text('Date')),
                    DataColumn(label: Text('Positive')),
                    DataColumn(label: Text('Negative')),
                  ],
                  rows: List<DataRow>.generate(
                    controller.covidList.length,
                    (index) {
                      final item = controller.covidList[index];
                      return DataRow(
                          onSelectChanged: (val) {
                            Get.to(CovidDetailsView(covidModel: item));
                          },
                          cells: [
                            DataCell(Text(Helpers.formatDate(item.date))),
                            DataCell(Text('${item.positive}')),
                            DataCell(Text('${item.negative}')),
                          ]);
                    },
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
