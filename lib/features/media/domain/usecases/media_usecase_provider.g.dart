// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(uploadAvatarUseCase)
final uploadAvatarUseCaseProvider = UploadAvatarUseCaseProvider._();

final class UploadAvatarUseCaseProvider
    extends
        $FunctionalProvider<
          UploadAvatarUseCase,
          UploadAvatarUseCase,
          UploadAvatarUseCase
        >
    with $Provider<UploadAvatarUseCase> {
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
  $ProviderElement<UploadAvatarUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UploadAvatarUseCase create(Ref ref) {
    return uploadAvatarUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadAvatarUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadAvatarUseCase>(value),
    );
  }
}

String _$uploadAvatarUseCaseHash() =>
    r'd9f998b8bb9cf6890caba95271c3f90d5839f11b';
