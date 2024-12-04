import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var currentImage = 0.obs;
  var isLoading = false.obs;
  var imageList = [
    "https://images.squarespace-cdn.com/content/v1/6029be12fff66b0cea7cc683/1e404cc4-cf27-4a58-a1bf-1af6ebd5f32d/OChristmasTree2.jpeg?format=1500w",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ].obs;
}
