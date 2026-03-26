import 'dart:typed_data';

import 'package:demo_app/core/domain/strategy/crop_strategy.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_cropper/image_cropper.dart';

final class ImageProcessorService {
  ImageProcessorService({ImageCropper? imageCropper}) : _imageCropper = imageCropper ?? ImageCropper();
  static const int _targetSize = 512;
  static const int _quality = 70;

  final ImageCropper _imageCropper;

  Future<Uint8List?> cropAndCompress({
    required String path,
    required CropStrategy strategy,
  }) async {
    final imageFormat = _compressFormatFor(strategy.cropStyle);
    final croppedFile = await _imageCropper.cropImage(
      sourcePath: path,
      maxWidth: _targetSize,
      maxHeight: _targetSize,
      aspectRatio: strategy.aspectRatio,
      compressFormat: imageFormat,
      compressQuality: _quality,
      uiSettings: [
        AndroidUiSettings(
          lockAspectRatio: true,
          hideBottomControls: true,
          cropStyle: strategy.cropStyle,
        ),
        IOSUiSettings(
          aspectRatioLockEnabled: true,
          aspectRatioPickerButtonHidden: true,
          resetAspectRatioEnabled: false,
          cropStyle: strategy.cropStyle,
        ),
      ],
    );

    if (croppedFile == null) {
      return null;
    }

    return FlutterImageCompress.compressWithFile(
      croppedFile.path,
      minWidth: _targetSize,
      minHeight: _targetSize,
      quality: _quality,
      format: _flutterCompressFormatFor(imageFormat),
    );
  }

  ImageCompressFormat _compressFormatFor(CropStyle cropStyle) {
    return cropStyle == CropStyle.circle ? ImageCompressFormat.png : ImageCompressFormat.jpg;
  }

  CompressFormat _flutterCompressFormatFor(ImageCompressFormat format) {
    return switch (format) {
      ImageCompressFormat.png => CompressFormat.png,
      ImageCompressFormat.jpg => CompressFormat.jpeg,
    };
  }
}
