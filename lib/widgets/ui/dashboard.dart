import 'package:flutter/material.dart';
import 'package:architect_theme/widgets/ui/architect_appbar.dart';
import 'package:architect_theme/widgets/ui/architect_sidebar.dart';


class DashboardWidget extends StatelessWidget {
  DashboardWidget ({@required this.body, @required this.pageTitle, Key key})  : super(key: key);

    final Widget body;

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const GentelellaSidebar(permanentlyDisplay: true,),
        Expanded(
          child: Scaffold(
            appBar: GentelellaAppBar(),
      
            body: body,
          ),
        ),
      ],
    );
  }
}