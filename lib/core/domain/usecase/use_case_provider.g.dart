// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_case_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAvatarUseCase)
final getAvatarUseCaseProvider = GetAvatarUseCaseProvider._();

final class GetAvatarUseCaseProvider
    extends
        $FunctionalProvider<GetImageUseCase, GetImageUseCase, GetImageUseCase>
    with $Provider<GetImageUseCase> {
  GetAvatarUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAvatarUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAvatarUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetImageUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetImageUseCase create(Ref ref) {
    return getAvatarUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetImageUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetImageUseCase>(value),
    );
  }
}

String _$getAvatarUseCaseHash() => r'967bdfd137b17966a9bf317748444de251bc94db';

@ProviderFor(uploadAvatarUseCase)
final uploadAvatarUseCaseProvider = UploadAvatarUseCaseProvider._();

final class UploadAvatarUseCaseProvider
    extends
        $FunctionalProvider<
          UploadImageUseCase,
          UploadImageUseCase,
          UploadImageUseCase
        >
    with $Provider<UploadImageUseCase> {
  UploadAvatarUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadAvatarUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadAvatarUseCaseHash();

  @$internal
  @override
  $ProviderElement<UploadImageUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UploadImageUseCase create(Ref ref) {
    return uploadAvatarUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadImageUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadImageUseCase>(value),
    );
  }
}

String _$uploadAvatarUseCaseHash() =>
    r'a9b54c81cf0d3fc905e6580732ff036adc2d4c3f';
