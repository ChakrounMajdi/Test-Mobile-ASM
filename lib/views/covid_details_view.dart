import 'package:flutter/material.dart';
import 'package:test_mobile_asm/helpers.dart';
import 'package:test_mobile_asm/model/covid_model.dart';
import 'package:test_mobile_asm/styles.dart';
import 'package:test_mobile_asm/widget/covid_item.dart';

class CovidDetailsView extends StatelessWidget {
  const CovidDetailsView({Key? key, required this.covidModel})
      : super(key: key);
  final CovidModel covidModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Helpers.formatDate(covidModel.date)),
      ),
      body: Padding(
        padding: sViewPadding,
        child: ListView(
          children: [
            CovidItem(
              itemLabel: 'Positive',
              itemValue: covidModel.positive.toString(),
            ),
            CovidItem(
              itemLabel: 'Negative',
              itemValue: covidModel.negative.toString(),
            ),
            CovidItem(
              itemLabel: 'Hospitalized Currently',
              itemValue: covidModel.hospitalizedCurrently.toString(),
            ),
            CovidItem(
              itemLabel: 'Hospitalized Cumulative',
              itemValue: covidModel.hospitalizedCumulative.toString(),
            ),
            CovidItem(
              itemLabel: 'Positive Increase',
              itemValue: covidModel.positiveIncrease.toString(),
            ),
            CovidItem(
              itemLabel: 'TotalTest Results Increase',
              itemValue: covidModel.totalTestResultsIncrease.toString(),
            ),
            CovidItem(
              itemLabel: 'Death Increase',
              itemValue: covidModel.deathIncrease.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
