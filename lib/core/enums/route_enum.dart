enum RouteEnum {
  home(name: 'home-page', path: '/home-page'),
  splash(name: 'splash-page', path: '/splash-page');

  const RouteEnum({
    required this.path,
    required this.name,
  });

  final String path;
  final String name;
}
