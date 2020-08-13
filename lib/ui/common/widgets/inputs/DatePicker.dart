import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onNewDate;

  DatePicker({
    @required this.initialDate,
    @required this.firstDate,
    @required this.lastDate,
    @required this.onNewDate,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return FlatButton(
      padding:
          EdgeInsets.symmetric(horizontal: AppTheme.inputHorizontalPadding, vertical: AppTheme.inputVerticalPadding),
      color: theme.inputDecorationTheme.fillColor,
      child: Row(
        children: [
          Text(
            DateFormat.yMd(Intl.getCurrentLocale()).format(initialDate),
            style: theme.textTheme.subtitle1,
            textAlign: TextAlign.start,
          ),
        ],
      ),
      onPressed: () async {
        var newDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          locale: Locale(Intl.shortLocale(Intl.getCurrentLocale())),
        );

        if (newDate != null) {
          onNewDate(newDate);
        }
      },
    );
  }
}
