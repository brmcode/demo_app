import 'package:demo_app/common/widgets/app_text_form_field.dart';
import 'package:demo_app/core/router/app_route.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/application/validator/sign_up_validator.dart';
import 'package:demo_app/features/auth/presentation/provider/sign_up_provider.dart';
import 'package:demo_app/features/auth/presentation/widget/app_bar_title.dart';
import 'package:demo_app/features/auth/presentation/widget/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignUpPage1 extends ConsumerStatefulWidget {
  const SignUpPage1({super.key});

  @override
  ConsumerState<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends ConsumerState<SignUpPage1> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();

  final _firstNameFocus = FocusNode();
  final _lastNameFocus = FocusNode();

  @override
  void dispose() {
    _firstNameFocus.dispose();
    _lastNameFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: const AppBarTitle(title: 'DEMO')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      HeaderText(title: 'Welcome :)'),
                      HeaderText(title: 'Introduce yourself to us.'),
                    ],
                  ),
                  AppSpacing.gap24,
                  AppTextFormField(
                    controller: _firstNameCtrl,
                    focusNode: _firstNameFocus,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    validator: SignUpValidator.firstNameValidator,
                    label: 'First Name',
                    hint: 'Enter your first name',
                  ),
                  AppSpacing.gap16,
                  AppTextFormField(
                    controller: _lastNameCtrl,
                    focusNode: _lastNameFocus,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                    validator: SignUpValidator.lastNameValidator,
                    label: 'Last Name',
                    hint: 'Enter your last name',
                    onFieldSubmitted: (_) => _handleNext(context),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () => _handleNext(context),
              child: Text(
                'Next',
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleNext(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      ref
          .read(signUpProvider.notifier)
          .updateStep1(
            firstName: _firstNameCtrl.text,
            lastName: _lastNameCtrl.text,
          );
      context.pushNamed(AppRoute.signUp2.name);
    }
  }
}
