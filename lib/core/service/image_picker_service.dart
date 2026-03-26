import 'package:image_picker/image_picker.dart';

final class ImagePickerService {
  ImagePickerService({ImagePicker? imagePicker}) : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  Future<XFile?> pick(ImageSource source) {
    return _imagePicker.pickImage(source: source);
  }

  Future<List<XFile>> pickMultiple() {
    return _imagePicker.pickMultiImage();
  }
}
