import 'dart:io';
import 'dart:typed_data';

import 'package:demo_app/core/common/helper.dart';
import 'package:demo_app/core/presentation/router/app_route.dart';
import 'package:demo_app/core/domain/strategy/crop_strategy.dart';
import 'package:demo_app/core/service/image_picker_service.dart';
import 'package:demo_app/core/service/image_processor_service.dart';
import 'package:demo_app/core/theme/app_color.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/presentation/providers/sign_up_provider.dart';
import 'package:demo_app/features/auth/presentation/states/sign_up_state.dart';
import 'package:demo_app/features/auth/presentation/widgets/app_bar_title.dart';
import 'package:demo_app/features/auth/presentation/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class SignUpPage3 extends ConsumerStatefulWidget {
  const SignUpPage3({super.key});

  @override
  ConsumerState<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends ConsumerState<SignUpPage3> {
  final _imagePickerService = ImagePickerService();
  final _imageProcessorService = ImageProcessorService();
  File? _image;

  Future<void> _pickImage() async {
    final file = await _imagePickerService.pick(ImageSource.gallery);
    if (file != null) {
      final processedBytes = await _imageProcessorService.cropAndCompress(
        path: file.path,
        strategy: const AvatarCropStrategy(),
      );

      if (processedBytes != null) {
        final imagePath = await _writeBytesToFile(processedBytes, 'avatar_${DateTime.now().millisecondsSinceEpoch}.png');

        setState(() => _image = File(imagePath));
        ref.read(signUpProvider.notifier).updateStep3(imagePath: imagePath);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final signUpState = ref.watch(signUpProvider);
    final state = signUpState.maybeMap(data: (data) => data, orElse: () => null);
    ref.listen(signUpProvider, (_, next) {
      if (next is SignUpSuccess) {
        context.goNamed(AppRoute.home.name);
      }
    });

    if (state == null) {
      final errorMessage = signUpState.maybeMap(
        error: (error) => error.failure.message,
        orElse: () => null,
      );

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const AppBarTitle(title: 'DEMO'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  errorMessage ?? 'Sign up information is missing.',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge,
                ),
                AppSpacing.gap16,
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => context.goNamed(AppRoute.signUp1.name),
                    child: Text(
                      'Start again',
                      style: textTheme.titleMedium?.copyWith(
                        color: colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'DEMO'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Column(
            children: [
              const HeaderText(title: 'Adjust your profile'),
              AppSpacing.gap24,
              SizedBox(
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: _pickImage,
                        child: buildAvatar(
                          context,
                          name: '${state.firstName} ${state.lastName}',
                          localFile: _image,
                        ),
                      ),

                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.2),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.gap24,
              buildUserInfo(context, state),
              if (state.submitError != null) ...[
                AppSpacing.gap16,
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    state.submitError!,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onErrorContainer,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: state.isLoading
                ? null
                : () {
                    ref.read(signUpProvider.notifier).submit();
                  },
            child: state.isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Text(
                    'Submit',
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.onPrimary,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Future<String> _writeBytesToFile(Uint8List bytes, String fileName) async {
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/$fileName');
    await file.writeAsBytes(bytes, flush: true);
    return file.path;
  }

  Widget buildAvatar(BuildContext context, {required String name, File? localFile}) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final radius = size.width * 0.15;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.5),
          width: 2.5,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: theme.brightness == Brightness.light ? AppColor.lightBorder : AppColor.darkBorder,
        child: ClipOval(
          child: localFile != null
              ? Image.file(
                  localFile,
                  fit: BoxFit.cover,
                  width: radius * 2,
                  height: radius * 2,
                )
              : Center(
                  child: Text(
                    getInitials(name),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: AppColor.darkText,
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required ThemeData theme,
  }) {
    return Row(
      children: [
        Icon(icon, size: 20, color: theme.colorScheme.primary),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.hintColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value.isEmpty ? '-' : value,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildUserInfo(BuildContext context, SignUpData state) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.brightness == Brightness.light ? AppColor.lightBorder : AppColor.darkBorder,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildInfoRow(
            icon: Icons.person_outline,
            label: 'First Name',
            value: state.firstName,
            theme: theme,
          ),
          const Divider(height: 24),
          _buildInfoRow(
            icon: Icons.person,
            label: 'Last Name',
            value: state.lastName,
            theme: theme,
          ),
          const Divider(height: 24),

          _buildInfoRow(
            icon: Icons.email_outlined,
            label: 'Email',
            value: state.email,
            theme: theme,
          ),
        ],
      ),
    );
  }
}
