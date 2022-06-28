class Count {
  final bool? success;
  final List<Data>? data;
  final String? message;

  Count({
    this.success,
    this.data,
    this.message,
  });

  Count.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList(),
        message = json['message'] as String?;

  Map<String, dynamic> toJson() => {
        'success': success,
        'data': data?.map((e) => e.toJson()).toList(),
        'message': message
      };
}

class Data {
  final int? open;
  final int? close;
  final int? progress;

  Data({
    this.open,
    this.close,
    this.progress,
  });

  Data.fromJson(Map<String, dynamic> json)
      : open = json['open'] as int?,
        close = json['close'] as int?,
        progress = json['progress'] as int?;

  Map<String, dynamic> toJson() =>
      {'open': open, 'close': close, 'progress': progress};
}
