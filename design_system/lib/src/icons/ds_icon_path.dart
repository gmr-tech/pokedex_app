// ignore_for_file: public_member_api_docs

const _path = 'assets/icons';

enum DSIconPath {
  pokeball('$_path/pokeball.svg'),
  straighten('$_path/straighten.svg'),
  weight('$_path/weight.svg');

  const DSIconPath(this.path);

  final String path;
}
