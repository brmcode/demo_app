// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mediaRepository)
final mediaRepositoryProvider = MediaRepositoryProvider._();

final class MediaRepositoryProvider
    extends
        $FunctionalProvider<MediaRepository, MediaRepository, MediaRepository>
    with $Provider<MediaRepository> {
  MediaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mediaRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mediaRepositoryHash();

  @$internal
  @override
  $ProviderElement<MediaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MediaRepository create(Ref ref) {
    return mediaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MediaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MediaRepository>(value),
    );
  }
}

String _$mediaRepositoryHash() => r'27aeeee0b502ded23edfabdd4f5d75f8d48364a0';
