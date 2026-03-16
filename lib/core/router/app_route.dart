enum AppRoute {
  home('/home', 'home'),
  auth('/auth', 'auth'),
  signIn('sign-in', 'sign-in'),
  signUp('sign-up', 'sign-up')
  ;

  const AppRoute(this.path, this.name);

  final String path;
  final String name;
}
