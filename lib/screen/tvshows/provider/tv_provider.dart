
import 'package:flutter/cupertino.dart';
import 'package:tvshows_app/screen/tvshows/modal/tv_modal.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TvProvider extends ChangeNotifier {
  List<TvModal> tvshow = [
    TvModal(
        image: "assets/image/im1.png",
        name: "Netflix",
        link:"https://www.netflix.com/in"),
    TvModal(
        image: "assets/image/img2.png",
        name: "Amazone Prime",
        link:"https://www.primevideo.com"),
    TvModal(
        image: "assets/image/img3.jpg",
        name: "Disney+ hotstar",
        link:"https://www.hotstar.com"),
    TvModal(
        image: "assets/image/img4.jpg",
        name: "Sony LIV",
        link:"https://www.sonyliv.com"),
    TvModal(
        image: "assets/image/img5.jpg",
        name: "Voot",
        link:"https://www.voot.com/"),
    TvModal(
        image: "assets/image/img6.png",
        name: "Zee5",
        link:"https://www.zee5.com/"),
    TvModal(
        image: "assets/image/img7.jpg",
        name: "Colors Tv",
        link:"https://www.colorstv.com/"),
    TvModal(
        image: "assets/image/img8.jpg",
        name: "Bigg Boss",
        link:"https://www.jiocinema.com/"),
    TvModal(
        image: "assets/image/img9.png",
        name: "Dream 11",
        link:"https://www.dream11.com/"),



  ];

  WebViewController? webViewController;
  int j=0;

  void initController() {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${tvshow[j].link}"));
  }
  void changeindex(int index)
  {
    j=index;
  }


  int t1=0;
  void selectIndex(int value) {
    t1 = value;
    notifyListeners();
    print(t1);
  }
}
