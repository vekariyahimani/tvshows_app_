import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvshows_app/screen/tvshows/provider/tv_provider.dart';

class Tvscreen1 extends StatefulWidget {
  const Tvscreen1({Key? key}) : super(key: key);

  @override
  State<Tvscreen1> createState() => _WebPage1State();
}

class _WebPage1State extends State<Tvscreen1> {
  TvProvider? tvProvidertrue;
  TvProvider? tvProviderfalse;

  @override
  Widget build(BuildContext context) {
    tvProviderfalse = Provider.of<TvProvider>(context, listen: false);
    tvProvidertrue = Provider.of<TvProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey.shade400,
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text("OTT  Websites",style: TextStyle(color: Colors.blue,fontSize: 18),),
              backgroundColor: Colors.black,
              elevation: 0,
              centerTitle: true,
            ),
            body: Stack(
              children: [


                Expanded(
                  child: ListView.builder(
                    itemCount: tvProvidertrue!.tvshow.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        tvProviderfalse!.changeindex(index);
                        Navigator.pushNamed(context, 'view', arguments: index);
                      },
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                                        '${tvProvidertrue!.tvshow[index].image}',
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${tvProvidertrue!.tvshow[index].name}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Online Tv Show pltform",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Icon(Icons.check_box,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
