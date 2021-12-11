import 'package:cars/models/car_detail_page.dart';
import 'package:cars/models/car_proporties.dart';



DetailPage page(int index){
  return DetailPage(model: models[index],image: images[index], price: costs[index], index: number[index], data: datas[index],);
}

class CarPage{
  String kuzov;
  String uzatishQutisi;
  String ranggi;
  int yukxona;
  double yoqilgi;
  int xavfSizlik;

  CarPage(this.kuzov, this.uzatishQutisi, this.ranggi, this.yukxona, this.yoqilgi, this.xavfSizlik);
}


CarPage pages(int index){
  return CarPage(kuzov[index], uzatishQutisi[index], ranggi[index], yukxonaSigimi[index], yoqilgi[index], xavfsizlik[index]);
}