import 'package:flutter/material.dart';

class TwoColumnDataRow extends DataRow {
  TwoColumnDataRow(String value1, String value2, {TextStyle? style})
      : super(cells: [
          DataCell(Text(value1, style: style)),
          DataCell(Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(value2, style: style),
          )),
        ]);
}
