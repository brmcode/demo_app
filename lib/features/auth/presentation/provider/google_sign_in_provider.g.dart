// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GoogleSignInNotifier)
final googleSignInProvider = GoogleSignInNotifierProvider._();

final class GoogleSignInNotifierProvider
    extends $NotifierProvider<GoogleSignInNotifier, GoogleSignInState> {
  GoogleSignInNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleSignInProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleSignInNotifierHash();

  @$internal
  @override
  GoogleSignInNotifier create() => GoogleSignInNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleSignInState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleSignInState>(value),
    );
  }
}

String _$googleSignInNotifierHash() =>
    r'72aeff88ae80994c6a17a6338668397db2b94313';

abstract class _$GoogleSignInNotifier extends $Notifier<GoogleSignInState> {
  GoogleSignInState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GoogleSignInState, GoogleSignInState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GoogleSignInState, GoogleSignInState>,
              GoogleSignInState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
