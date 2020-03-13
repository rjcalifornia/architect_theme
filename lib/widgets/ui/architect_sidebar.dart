import 'package:flutter/material.dart';
import 'package:architect_theme/widgets/app_route_observer.dart';

class GentelellaSidebar extends StatefulWidget {
  const GentelellaSidebar({@required this.permanentlyDisplay, Key key})
      : super(key: key);

  final bool permanentlyDisplay;


  @override
  _GentelellaSidebarState createState() => _GentelellaSidebarState();
}

class _GentelellaSidebarState extends State<GentelellaSidebar> with RouteAware {

  String _selectedRoute;
  AppRouteObserver _routeObserver;

  @override
  void initState() {
    super.initState();
    _routeObserver = AppRouteObserver();
  }

    @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _updateSelectedRoute();
  }

  @override
  void didPop() {
    _updateSelectedRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Color(0xffffffff),
            width: 280,
            child:
        Drawer(
          child:
          Container(
            color: Color(0xffffffff),
          child: ListView(
            children: <Widget>[
            /*  DrawerHeader(
                //padding: EdgeInsets.zero,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 130,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            "https://colorlib.com/polygon/gentelella/images/img.jpg",
                            width: 56,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Welcolme, ',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffBAB8B8))),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    height: 48,
                                  ),
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffECF0F1)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
              ),*/
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 12,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 22,),
                         ClipRRect(
                         // borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            "https://demo.dashboardpack.com/architectui-html-free/assets/images/logo-inverse.png",
                            width: 97,
                          ),
                        ),
                        
      
                      ],
                    )
            ],
                ),
              ),
              SizedBox(height: 28,),

              Container(
                margin: EdgeInsets.symmetric(vertical: 18.0, horizontal: 22.0),
                child: Column(
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Text("DASHBOARDS", style: TextStyle(color: Color(0xff3f6ad8), fontWeight: FontWeight.bold, fontSize: 12.5),),
                      ],
                    ),
                    SizedBox(height: 14,),
                    GestureDetector(
                      onTap: ()async{

                await _navigateTo(context, '/dashboard/');},
                      child:  Row(
                      children: <Widget>[
                        SizedBox(width: 12,),
                        Icon(Icons.whatshot, color: Color(0xff495057 )),
                        SizedBox(width: 10,),
                        Text("Dashboard example 1", style: TextStyle(color: Color(0xff495057), fontSize: 12.5,),),
                      ],
                    )
                 ,

                    ),
                    SizedBox(height: 14,),

  Row(
                      children: <Widget>[
                        Text("FORMS", style: TextStyle(color: Color(0xff3f6ad8), fontWeight: FontWeight.bold, fontSize: 12.5,),),
                      ],
                    ),

                    SizedBox(height: 14,),
                    GestureDetector(
                      onTap: ()async{

                await _navigateTo(context, '/add-users');},
                      child:  Row(
                      children: <Widget>[
                        SizedBox(width: 12,),
                        Icon(Icons.person_add, color: Color(0xff495057 )),
                        SizedBox(width: 10,),
                        Text("Add users", style: TextStyle(color: Color(0xff495057), fontSize: 12.5,),),
                      ],
                    )
                 ,

                    ),
                    ],
                ),
              ),
             
            ],
          ),
        ),
        ),
    );
  }

  void _updateSelectedRoute() {
    setState(() {
      _selectedRoute = ModalRoute.of(context).settings.name;
    });
  }

    Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }
    await Navigator.pushNamed(context, routeName);
  }

}