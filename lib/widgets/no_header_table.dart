import 'package:flutter/material.dart';

class NoHeaderTable extends StatelessWidget {
  final List<DataRow> rows;
  final int noOfColumns;
  const NoHeaderTable({Key? key, required this.rows, this.noOfColumns = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowHeight: 0,
      dataRowMinHeight: 55,
      dataRowMaxHeight: double.infinity,
      columns: List.generate(noOfColumns, (index) => DataColumn(label: Container())),
      rows: rows,
    );
  }
}
