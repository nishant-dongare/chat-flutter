class Result {
  late final bool _resultStatus;
  late final String _error;

  bool get getResultStatus => _resultStatus;

  String get getError => _error;

  Result.success() {
    _resultStatus = true;
  }

  Result.error(this._error) {
    _resultStatus = false;
  }
}
