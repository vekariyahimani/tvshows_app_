import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvshows_app/screen/tvshows/provider/tv_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Tvscreen2 extends StatefulWidget {
  const Tvscreen2({Key? key}) : super(key: key);

  @override
  State<Tvscreen2> createState() => _WebPage2State();
}

class _WebPage2State extends State<Tvscreen2> {
  @override
  void initState() {
    super.initState();

    Provider.of<TvProvider>(context, listen: false).initController();
  }

  TvProvider? tvProviderfalse;
  TvProvider? tvProvidertrue;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    tvProviderfalse = Provider.of<TvProvider>(context, listen: false);
    tvProvidertrue = Provider.of<TvProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${tvProvidertrue!.tvshow[index].name}",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: WebViewWidget(controller: tvProvidertrue!.webViewController!),
      ),
    );
  }
}
