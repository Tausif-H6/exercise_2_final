import 'package:flutter/material.dart';
import '../../models/todo.dart';

class Float extends StatelessWidget {
  final Todo _todo;

  Float(this._todo);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          icon: Icon(Icons.check_circle),
          label: Text('Update'),
          onPressed: () => Navigator.pop(context, _todo),
          heroTag: null,
        ),
        FloatingActionButton.extended(
          icon: Icon(Icons.cancel),
          label: Text('Cancel'),
          onPressed: () => Navigator.pop(context, null),
          heroTag: null,
        ),
      ],
    );
  }
}
