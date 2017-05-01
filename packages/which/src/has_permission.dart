
/// See http://dartbug.com/22036
library which.src.has_permission;

class FilePermission {

  final int index;
  final String _name;

  const FilePermission._(this.index, this._name);

  static const EXECUTE = const FilePermission._(0, 'EXECUTE');
  static const WRITE = const FilePermission._(1, 'WRITE');
  static const READ = const FilePermission._(2, 'READ');
  static const SET_UID = const FilePermission._(3, 'SET_UID');
  static const SET_GID = const FilePermission._(4, 'SET_GID');
  static const STICKY = const FilePermission._(5, 'STICKY');

  static const List<FilePermission> values = const [EXECUTE, WRITE, READ, SET_UID, SET_GID, STICKY];

  String toString() => 'FilePermission.$_name';
}

class FilePermissionRole {

  final int index;
  final String _name;

  const FilePermissionRole._(this.index, this._name);

  static const WORLD = const FilePermissionRole._(0, 'WORLD');
  static const GROUP = const FilePermissionRole._(1, 'GROUP');
  static const OWNER = const FilePermissionRole._(2, 'OWNER');

  static const List<FilePermissionRole> values = const [WORLD, GROUP, OWNER];

  String toString() => 'FilePermissionRole.$_name';
}

bool hasPermission(int fileStatMode, FilePermission permission, {FilePermissionRole role: FilePermissionRole.WORLD}) {
  var bitIndex = _getPermissionBitIndex(permission, role);
  return (fileStatMode & (1 << bitIndex)) != 0;
}

int _getPermissionBitIndex(FilePermission permission, FilePermissionRole role) {
  switch (permission) {
    case FilePermission.SET_UID: return 11;
    case FilePermission.SET_GID: return 10;
    case FilePermission.STICKY: return 9;
    default: return (role.index * 3) + permission.index;
  }
}
