import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
        this.taskTitle,
        this.checkboxCallback,
        this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Container(
        margin: EdgeInsets.only(left: 10),
        child: Text(
          taskTitle,

          style: TextStyle(
            color: isChecked ? Pink : Colors.black,
              decoration: isChecked ? TextDecoration.lineThrough : null ,
          ),
        ),
      ),
      leading: RoundCheckBox(
        onTap: checkboxCallback,
        checkedColor: Pink,
        isChecked: isChecked,
        size: 30,


          ),
    );
  }
}
