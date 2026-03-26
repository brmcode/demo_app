import 'package:image_cropper/image_cropper.dart';

abstract class CropStrategy {
  const CropStrategy();

  CropAspectRatio get aspectRatio;
  CropStyle get cropStyle;
}

final class AvatarCropStrategy extends CropStrategy {
  const AvatarCropStrategy();

  static const CropAspectRatio _aspectRatio = CropAspectRatio(
    ratioX: 1,
    ratioY: 1,
  );

  @override
  CropAspectRatio get aspectRatio => _aspectRatio;

  @override
  CropStyle get cropStyle => CropStyle.circle;
}

final class CoverCropStrategy extends CropStrategy {
  const CoverCropStrategy();

  static const CropAspectRatio _aspectRatio = CropAspectRatio(
    ratioX: 16,
    ratioY: 9,
  );

  @override
  CropAspectRatio get aspectRatio => _aspectRatio;

  @override
  CropStyle get cropStyle => CropStyle.rectangle;
}
