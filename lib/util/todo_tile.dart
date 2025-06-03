import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.onChanged,
    required this.taskCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.blue[500],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              taskName,
              style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
