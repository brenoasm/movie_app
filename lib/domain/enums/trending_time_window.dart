enum TrendingTimeWindow {
  DAILY,
  WEEKLY,
}

extension TrendingTimeWindowExtensions on TrendingTimeWindow {
  String get value {
    switch (this) {
      case TrendingTimeWindow.WEEKLY:
        return 'week';
      case TrendingTimeWindow.DAILY:
      default:
        return 'day';
    }
  }
}
