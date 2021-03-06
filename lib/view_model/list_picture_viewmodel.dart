import 'package:mvvm/model/picsum_model.dart';
import 'package:mvvm/services/picsum_service.dart';

class ListPictureViewModel {
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async {
    final apiResult = await Service().fetchPictureAPI();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).toList();
    
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}
