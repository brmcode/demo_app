enum AppRoute {
  home('/home', 'home'),
  auth('/auth', 'auth'),
  signIn('sign-in', 'sign-in'),
  signUp1('sign-up-1', 'sign-up-1'),
  signUp2('sign-up-2', 'sign-up-2'),
  signUp3('sign-up-3', 'sign-up-3')
  ;

  const AppRoute(this.path, this.name);

  final String path;
  final String name;
}
