import 'package:flutter/material.dart';

import 'package:architect_theme/widgets/ui/dashboard.dart';


class ReceiptForm extends StatefulWidget {
  ReceiptForm({Key key}) : super(key: key);

  @override
  _ReceiptFormState createState() => _ReceiptFormState();
}

class _ReceiptFormState extends State<ReceiptForm> {
  @override
  Widget build(BuildContext context) {
    return DashboardWidget(
      pageTitle: '',
      
      body: SingleChildScrollView(
        child:
        Column(
          children: <Widget>[
            Text('Add new user page'),
          ],
        ),),
    );
  }
}