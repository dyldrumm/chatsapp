import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MediaService {
  final ImagePicker _picker = ImagePicker();
  static MediaService instance = MediaService();

  Future<File> getImageFromLibrary() {
    return _picker
        .getImage(source: ImageSource.gallery)
        .then((value) => File(value!.path));
  }
}
