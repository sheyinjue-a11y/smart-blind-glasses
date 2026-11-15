// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisualElement _$VisualElementFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'maskOverlay':
      return _MaskOverlay.fromJson(json);
    case 'polyline':
      return _Polyline.fromJson(json);
    case 'circle':
      return _Circle.fromJson(json);
    case 'rectangle':
      return _Rectangle.fromJson(json);
    case 'arrow':
      return _Arrow.fromJson(json);
    case 'dashedLine':
      return _DashedLine.fromJson(json);
    case 'angleArc':
      return _AngleArc.fromJson(json);
    case 'textWithBg':
      return _TextWithBg.fromJson(json);
    case 'dataPanel':
      return _DataPanel.fromJson(json);
    case 'outline':
      return _Outline.fromJson(json);
    case 'doubleArrow':
      return _DoubleArrow.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'VisualElement',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VisualElement {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VisualElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisualElementCopyWith<$Res> {
  factory $VisualElementCopyWith(
          VisualElement value, $Res Function(VisualElement) then) =
      _$VisualElementCopyWithImpl<$Res, VisualElement>;
}

/// @nodoc
class _$VisualElementCopyWithImpl<$Res, $Val extends VisualElement>
    implements $VisualElementCopyWith<$Res> {
  _$VisualElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MaskOverlayImplCopyWith<$Res> {
  factory _$$MaskOverlayImplCopyWith(
          _$MaskOverlayImpl value, $Res Function(_$MaskOverlayImpl) then) =
      __$$MaskOverlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<List<int>> points,
      String color,
      String? effect,
      double? pulseSpeed});
}

/// @nodoc
class __$$MaskOverlayImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$MaskOverlayImpl>
    implements _$$MaskOverlayImplCopyWith<$Res> {
  __$$MaskOverlayImplCopyWithImpl(
      _$MaskOverlayImpl _value, $Res Function(_$MaskOverlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? effect = freezed,
    Object? pulseSpeed = freezed,
  }) {
    return _then(_$MaskOverlayImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String?,
      pulseSpeed: freezed == pulseSpeed
          ? _value.pulseSpeed
          : pulseSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaskOverlayImpl with DiagnosticableTreeMixin implements _MaskOverlay {
  const _$MaskOverlayImpl(
      {required final List<List<int>> points,
      required this.color,
      this.effect,
      this.pulseSpeed,
      final String? $type})
      : _points = points,
        $type = $type ?? 'maskOverlay';

  factory _$MaskOverlayImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaskOverlayImplFromJson(json);

  final List<List<int>> _points;
  @override
  List<List<int>> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

// 多边形点坐标，[[x1,y1], [x2,y2], ...]
  @override
  final String color;
// RGBA格式字符串，如 "rgba(0, 255, 0, 0.4)"
  @override
  final String? effect;
// 效果，如 "pulse"
  @override
  final double? pulseSpeed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.maskOverlay(points: $points, color: $color, effect: $effect, pulseSpeed: $pulseSpeed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.maskOverlay'))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('effect', effect))
      ..add(DiagnosticsProperty('pulseSpeed', pulseSpeed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaskOverlayImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.pulseSpeed, pulseSpeed) ||
                other.pulseSpeed == pulseSpeed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_points), color, effect, pulseSpeed);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaskOverlayImplCopyWith<_$MaskOverlayImpl> get copyWith =>
      __$$MaskOverlayImplCopyWithImpl<_$MaskOverlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return maskOverlay(points, color, effect, pulseSpeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return maskOverlay?.call(points, color, effect, pulseSpeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (maskOverlay != null) {
      return maskOverlay(points, color, effect, pulseSpeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return maskOverlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return maskOverlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (maskOverlay != null) {
      return maskOverlay(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MaskOverlayImplToJson(
      this,
    );
  }
}

abstract class _MaskOverlay implements VisualElement {
  const factory _MaskOverlay(
      {required final List<List<int>> points,
      required final String color,
      final String? effect,
      final double? pulseSpeed}) = _$MaskOverlayImpl;

  factory _MaskOverlay.fromJson(Map<String, dynamic> json) =
      _$MaskOverlayImpl.fromJson;

  List<List<int>> get points; // 多边形点坐标，[[x1,y1], [x2,y2], ...]
  String get color; // RGBA格式字符串，如 "rgba(0, 255, 0, 0.4)"
  String? get effect; // 效果，如 "pulse"
  double? get pulseSpeed;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaskOverlayImplCopyWith<_$MaskOverlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PolylineImplCopyWith<$Res> {
  factory _$$PolylineImplCopyWith(
          _$PolylineImpl value, $Res Function(_$PolylineImpl) then) =
      __$$PolylineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<int>> points, String color, int? width});
}

/// @nodoc
class __$$PolylineImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$PolylineImpl>
    implements _$$PolylineImplCopyWith<$Res> {
  __$$PolylineImplCopyWithImpl(
      _$PolylineImpl _value, $Res Function(_$PolylineImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? width = freezed,
  }) {
    return _then(_$PolylineImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolylineImpl with DiagnosticableTreeMixin implements _Polyline {
  const _$PolylineImpl(
      {required final List<List<int>> points,
      required this.color,
      this.width,
      final String? $type})
      : _points = points,
        $type = $type ?? 'polyline';

  factory _$PolylineImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolylineImplFromJson(json);

  final List<List<int>> _points;
  @override
  List<List<int>> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final String color;
  @override
  final int? width;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.polyline(points: $points, color: $color, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.polyline'))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolylineImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_points), color, width);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PolylineImplCopyWith<_$PolylineImpl> get copyWith =>
      __$$PolylineImplCopyWithImpl<_$PolylineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return polyline(points, color, width);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return polyline?.call(points, color, width);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (polyline != null) {
      return polyline(points, color, width);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return polyline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return polyline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (polyline != null) {
      return polyline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PolylineImplToJson(
      this,
    );
  }
}

abstract class _Polyline implements VisualElement {
  const factory _Polyline(
      {required final List<List<int>> points,
      required final String color,
      final int? width}) = _$PolylineImpl;

  factory _Polyline.fromJson(Map<String, dynamic> json) =
      _$PolylineImpl.fromJson;

  List<List<int>> get points;
  String get color;
  int? get width;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PolylineImplCopyWith<_$PolylineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CircleImplCopyWith<$Res> {
  factory _$$CircleImplCopyWith(
          _$CircleImpl value, $Res Function(_$CircleImpl) then) =
      __$$CircleImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<int> center,
      int radius,
      String color,
      bool? filled,
      int? thickness});
}

/// @nodoc
class __$$CircleImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$CircleImpl>
    implements _$$CircleImplCopyWith<$Res> {
  __$$CircleImplCopyWithImpl(
      _$CircleImpl _value, $Res Function(_$CircleImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
    Object? radius = null,
    Object? color = null,
    Object? filled = freezed,
    Object? thickness = freezed,
  }) {
    return _then(_$CircleImpl(
      center: null == center
          ? _value._center
          : center // ignore: cast_nullable_to_non_nullable
              as List<int>,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      filled: freezed == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool?,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircleImpl with DiagnosticableTreeMixin implements _Circle {
  const _$CircleImpl(
      {required final List<int> center,
      required this.radius,
      required this.color,
      this.filled,
      this.thickness,
      final String? $type})
      : _center = center,
        $type = $type ?? 'circle';

  factory _$CircleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircleImplFromJson(json);

  final List<int> _center;
  @override
  List<int> get center {
    if (_center is EqualUnmodifiableListView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_center);
  }

// [x, y]
  @override
  final int radius;
  @override
  final String color;
  @override
  final bool? filled;
  @override
  final int? thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.circle(center: $center, radius: $radius, color: $color, filled: $filled, thickness: $thickness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.circle'))
      ..add(DiagnosticsProperty('center', center))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('filled', filled))
      ..add(DiagnosticsProperty('thickness', thickness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleImpl &&
            const DeepCollectionEquality().equals(other._center, _center) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_center),
      radius,
      color,
      filled,
      thickness);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleImplCopyWith<_$CircleImpl> get copyWith =>
      __$$CircleImplCopyWithImpl<_$CircleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return circle(center, radius, color, filled, thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return circle?.call(center, radius, color, filled, thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(center, radius, color, filled, thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return circle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return circle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (circle != null) {
      return circle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CircleImplToJson(
      this,
    );
  }
}

abstract class _Circle implements VisualElement {
  const factory _Circle(
      {required final List<int> center,
      required final int radius,
      required final String color,
      final bool? filled,
      final int? thickness}) = _$CircleImpl;

  factory _Circle.fromJson(Map<String, dynamic> json) = _$CircleImpl.fromJson;

  List<int> get center; // [x, y]
  int get radius;
  String get color;
  bool? get filled;
  int? get thickness;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleImplCopyWith<_$CircleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RectangleImplCopyWith<$Res> {
  factory _$$RectangleImplCopyWith(
          _$RectangleImpl value, $Res Function(_$RectangleImpl) then) =
      __$$RectangleImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'top_left') List<int> topLeft,
      @JsonKey(name: 'bottom_right') List<int> bottomRight,
      String color,
      bool? filled,
      int? thickness});
}

/// @nodoc
class __$$RectangleImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$RectangleImpl>
    implements _$$RectangleImplCopyWith<$Res> {
  __$$RectangleImplCopyWithImpl(
      _$RectangleImpl _value, $Res Function(_$RectangleImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? bottomRight = null,
    Object? color = null,
    Object? filled = freezed,
    Object? thickness = freezed,
  }) {
    return _then(_$RectangleImpl(
      topLeft: null == topLeft
          ? _value._topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as List<int>,
      bottomRight: null == bottomRight
          ? _value._bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as List<int>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      filled: freezed == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool?,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectangleImpl with DiagnosticableTreeMixin implements _Rectangle {
  const _$RectangleImpl(
      {@JsonKey(name: 'top_left') required final List<int> topLeft,
      @JsonKey(name: 'bottom_right') required final List<int> bottomRight,
      required this.color,
      this.filled,
      this.thickness,
      final String? $type})
      : _topLeft = topLeft,
        _bottomRight = bottomRight,
        $type = $type ?? 'rectangle';

  factory _$RectangleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectangleImplFromJson(json);

  final List<int> _topLeft;
  @override
  @JsonKey(name: 'top_left')
  List<int> get topLeft {
    if (_topLeft is EqualUnmodifiableListView) return _topLeft;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topLeft);
  }

// [x, y]
  final List<int> _bottomRight;
// [x, y]
  @override
  @JsonKey(name: 'bottom_right')
  List<int> get bottomRight {
    if (_bottomRight is EqualUnmodifiableListView) return _bottomRight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomRight);
  }

// [x, y]
  @override
  final String color;
  @override
  final bool? filled;
  @override
  final int? thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.rectangle(topLeft: $topLeft, bottomRight: $bottomRight, color: $color, filled: $filled, thickness: $thickness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.rectangle'))
      ..add(DiagnosticsProperty('topLeft', topLeft))
      ..add(DiagnosticsProperty('bottomRight', bottomRight))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('filled', filled))
      ..add(DiagnosticsProperty('thickness', thickness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectangleImpl &&
            const DeepCollectionEquality().equals(other._topLeft, _topLeft) &&
            const DeepCollectionEquality()
                .equals(other._bottomRight, _bottomRight) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topLeft),
      const DeepCollectionEquality().hash(_bottomRight),
      color,
      filled,
      thickness);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RectangleImplCopyWith<_$RectangleImpl> get copyWith =>
      __$$RectangleImplCopyWithImpl<_$RectangleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return rectangle(topLeft, bottomRight, color, filled, thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return rectangle?.call(topLeft, bottomRight, color, filled, thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (rectangle != null) {
      return rectangle(topLeft, bottomRight, color, filled, thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return rectangle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return rectangle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (rectangle != null) {
      return rectangle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RectangleImplToJson(
      this,
    );
  }
}

abstract class _Rectangle implements VisualElement {
  const factory _Rectangle(
      {@JsonKey(name: 'top_left') required final List<int> topLeft,
      @JsonKey(name: 'bottom_right') required final List<int> bottomRight,
      required final String color,
      final bool? filled,
      final int? thickness}) = _$RectangleImpl;

  factory _Rectangle.fromJson(Map<String, dynamic> json) =
      _$RectangleImpl.fromJson;

  @JsonKey(name: 'top_left')
  List<int> get topLeft; // [x, y]
  @JsonKey(name: 'bottom_right')
  List<int> get bottomRight; // [x, y]
  String get color;
  bool? get filled;
  int? get thickness;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RectangleImplCopyWith<_$RectangleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArrowImplCopyWith<$Res> {
  factory _$$ArrowImplCopyWith(
          _$ArrowImpl value, $Res Function(_$ArrowImpl) then) =
      __$$ArrowImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<int> start,
      List<int> end,
      String color,
      int? thickness,
      @JsonKey(name: 'tip_length') double? tipLength});
}

/// @nodoc
class __$$ArrowImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$ArrowImpl>
    implements _$$ArrowImplCopyWith<$Res> {
  __$$ArrowImplCopyWithImpl(
      _$ArrowImpl _value, $Res Function(_$ArrowImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? color = null,
    Object? thickness = freezed,
    Object? tipLength = freezed,
  }) {
    return _then(_$ArrowImpl(
      start: null == start
          ? _value._start
          : start // ignore: cast_nullable_to_non_nullable
              as List<int>,
      end: null == end
          ? _value._end
          : end // ignore: cast_nullable_to_non_nullable
              as List<int>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
      tipLength: freezed == tipLength
          ? _value.tipLength
          : tipLength // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrowImpl with DiagnosticableTreeMixin implements _Arrow {
  const _$ArrowImpl(
      {required final List<int> start,
      required final List<int> end,
      required this.color,
      this.thickness,
      @JsonKey(name: 'tip_length') this.tipLength,
      final String? $type})
      : _start = start,
        _end = end,
        $type = $type ?? 'arrow';

  factory _$ArrowImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrowImplFromJson(json);

  final List<int> _start;
  @override
  List<int> get start {
    if (_start is EqualUnmodifiableListView) return _start;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_start);
  }

// [x, y]
  final List<int> _end;
// [x, y]
  @override
  List<int> get end {
    if (_end is EqualUnmodifiableListView) return _end;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_end);
  }

// [x, y]
  @override
  final String color;
  @override
  final int? thickness;
  @override
  @JsonKey(name: 'tip_length')
  final double? tipLength;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.arrow(start: $start, end: $end, color: $color, thickness: $thickness, tipLength: $tipLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.arrow'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('thickness', thickness))
      ..add(DiagnosticsProperty('tipLength', tipLength));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrowImpl &&
            const DeepCollectionEquality().equals(other._start, _start) &&
            const DeepCollectionEquality().equals(other._end, _end) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.tipLength, tipLength) ||
                other.tipLength == tipLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_start),
      const DeepCollectionEquality().hash(_end),
      color,
      thickness,
      tipLength);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrowImplCopyWith<_$ArrowImpl> get copyWith =>
      __$$ArrowImplCopyWithImpl<_$ArrowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return arrow(start, end, color, thickness, tipLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return arrow?.call(start, end, color, thickness, tipLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (arrow != null) {
      return arrow(start, end, color, thickness, tipLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return arrow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return arrow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (arrow != null) {
      return arrow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrowImplToJson(
      this,
    );
  }
}

abstract class _Arrow implements VisualElement {
  const factory _Arrow(
      {required final List<int> start,
      required final List<int> end,
      required final String color,
      final int? thickness,
      @JsonKey(name: 'tip_length') final double? tipLength}) = _$ArrowImpl;

  factory _Arrow.fromJson(Map<String, dynamic> json) = _$ArrowImpl.fromJson;

  List<int> get start; // [x, y]
  List<int> get end; // [x, y]
  String get color;
  int? get thickness;
  @JsonKey(name: 'tip_length')
  double? get tipLength;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrowImplCopyWith<_$ArrowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashedLineImplCopyWith<$Res> {
  factory _$$DashedLineImplCopyWith(
          _$DashedLineImpl value, $Res Function(_$DashedLineImpl) then) =
      __$$DashedLineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> start, List<int> end, String color, int? thickness});
}

/// @nodoc
class __$$DashedLineImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$DashedLineImpl>
    implements _$$DashedLineImplCopyWith<$Res> {
  __$$DashedLineImplCopyWithImpl(
      _$DashedLineImpl _value, $Res Function(_$DashedLineImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? color = null,
    Object? thickness = freezed,
  }) {
    return _then(_$DashedLineImpl(
      start: null == start
          ? _value._start
          : start // ignore: cast_nullable_to_non_nullable
              as List<int>,
      end: null == end
          ? _value._end
          : end // ignore: cast_nullable_to_non_nullable
              as List<int>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashedLineImpl with DiagnosticableTreeMixin implements _DashedLine {
  const _$DashedLineImpl(
      {required final List<int> start,
      required final List<int> end,
      required this.color,
      this.thickness,
      final String? $type})
      : _start = start,
        _end = end,
        $type = $type ?? 'dashedLine';

  factory _$DashedLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashedLineImplFromJson(json);

  final List<int> _start;
  @override
  List<int> get start {
    if (_start is EqualUnmodifiableListView) return _start;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_start);
  }

// [x, y]
  final List<int> _end;
// [x, y]
  @override
  List<int> get end {
    if (_end is EqualUnmodifiableListView) return _end;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_end);
  }

// [x, y]
  @override
  final String color;
  @override
  final int? thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.dashedLine(start: $start, end: $end, color: $color, thickness: $thickness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.dashedLine'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('thickness', thickness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashedLineImpl &&
            const DeepCollectionEquality().equals(other._start, _start) &&
            const DeepCollectionEquality().equals(other._end, _end) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_start),
      const DeepCollectionEquality().hash(_end),
      color,
      thickness);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashedLineImplCopyWith<_$DashedLineImpl> get copyWith =>
      __$$DashedLineImplCopyWithImpl<_$DashedLineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return dashedLine(start, end, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return dashedLine?.call(start, end, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (dashedLine != null) {
      return dashedLine(start, end, color, thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return dashedLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return dashedLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (dashedLine != null) {
      return dashedLine(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DashedLineImplToJson(
      this,
    );
  }
}

abstract class _DashedLine implements VisualElement {
  const factory _DashedLine(
      {required final List<int> start,
      required final List<int> end,
      required final String color,
      final int? thickness}) = _$DashedLineImpl;

  factory _DashedLine.fromJson(Map<String, dynamic> json) =
      _$DashedLineImpl.fromJson;

  List<int> get start; // [x, y]
  List<int> get end; // [x, y]
  String get color;
  int? get thickness;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashedLineImplCopyWith<_$DashedLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AngleArcImplCopyWith<$Res> {
  factory _$$AngleArcImplCopyWith(
          _$AngleArcImpl value, $Res Function(_$AngleArcImpl) then) =
      __$$AngleArcImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<int> center,
      int radius,
      @JsonKey(name: 'start_angle') double startAngle,
      @JsonKey(name: 'end_angle') double endAngle,
      String color,
      int? thickness});
}

/// @nodoc
class __$$AngleArcImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$AngleArcImpl>
    implements _$$AngleArcImplCopyWith<$Res> {
  __$$AngleArcImplCopyWithImpl(
      _$AngleArcImpl _value, $Res Function(_$AngleArcImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
    Object? radius = null,
    Object? startAngle = null,
    Object? endAngle = null,
    Object? color = null,
    Object? thickness = freezed,
  }) {
    return _then(_$AngleArcImpl(
      center: null == center
          ? _value._center
          : center // ignore: cast_nullable_to_non_nullable
              as List<int>,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      startAngle: null == startAngle
          ? _value.startAngle
          : startAngle // ignore: cast_nullable_to_non_nullable
              as double,
      endAngle: null == endAngle
          ? _value.endAngle
          : endAngle // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AngleArcImpl with DiagnosticableTreeMixin implements _AngleArc {
  const _$AngleArcImpl(
      {required final List<int> center,
      required this.radius,
      @JsonKey(name: 'start_angle') required this.startAngle,
      @JsonKey(name: 'end_angle') required this.endAngle,
      required this.color,
      this.thickness,
      final String? $type})
      : _center = center,
        $type = $type ?? 'angleArc';

  factory _$AngleArcImpl.fromJson(Map<String, dynamic> json) =>
      _$$AngleArcImplFromJson(json);

  final List<int> _center;
  @override
  List<int> get center {
    if (_center is EqualUnmodifiableListView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_center);
  }

// [x, y]
  @override
  final int radius;
  @override
  @JsonKey(name: 'start_angle')
  final double startAngle;
// 角度
  @override
  @JsonKey(name: 'end_angle')
  final double endAngle;
// 角度
  @override
  final String color;
  @override
  final int? thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.angleArc(center: $center, radius: $radius, startAngle: $startAngle, endAngle: $endAngle, color: $color, thickness: $thickness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.angleArc'))
      ..add(DiagnosticsProperty('center', center))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('startAngle', startAngle))
      ..add(DiagnosticsProperty('endAngle', endAngle))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('thickness', thickness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AngleArcImpl &&
            const DeepCollectionEquality().equals(other._center, _center) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.startAngle, startAngle) ||
                other.startAngle == startAngle) &&
            (identical(other.endAngle, endAngle) ||
                other.endAngle == endAngle) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_center),
      radius,
      startAngle,
      endAngle,
      color,
      thickness);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AngleArcImplCopyWith<_$AngleArcImpl> get copyWith =>
      __$$AngleArcImplCopyWithImpl<_$AngleArcImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return angleArc(center, radius, startAngle, endAngle, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return angleArc?.call(
        center, radius, startAngle, endAngle, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (angleArc != null) {
      return angleArc(center, radius, startAngle, endAngle, color, thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return angleArc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return angleArc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (angleArc != null) {
      return angleArc(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AngleArcImplToJson(
      this,
    );
  }
}

abstract class _AngleArc implements VisualElement {
  const factory _AngleArc(
      {required final List<int> center,
      required final int radius,
      @JsonKey(name: 'start_angle') required final double startAngle,
      @JsonKey(name: 'end_angle') required final double endAngle,
      required final String color,
      final int? thickness}) = _$AngleArcImpl;

  factory _AngleArc.fromJson(Map<String, dynamic> json) =
      _$AngleArcImpl.fromJson;

  List<int> get center; // [x, y]
  int get radius;
  @JsonKey(name: 'start_angle')
  double get startAngle; // 角度
  @JsonKey(name: 'end_angle')
  double get endAngle; // 角度
  String get color;
  int? get thickness;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AngleArcImplCopyWith<_$AngleArcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextWithBgImplCopyWith<$Res> {
  factory _$$TextWithBgImplCopyWith(
          _$TextWithBgImpl value, $Res Function(_$TextWithBgImpl) then) =
      __$$TextWithBgImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String text,
      List<int> position,
      @JsonKey(name: 'font_scale') double? fontScale,
      String color,
      @JsonKey(name: 'bg_color') String? bgColor});
}

/// @nodoc
class __$$TextWithBgImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$TextWithBgImpl>
    implements _$$TextWithBgImplCopyWith<$Res> {
  __$$TextWithBgImplCopyWithImpl(
      _$TextWithBgImpl _value, $Res Function(_$TextWithBgImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? position = null,
    Object? fontScale = freezed,
    Object? color = null,
    Object? bgColor = freezed,
  }) {
    return _then(_$TextWithBgImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fontScale: freezed == fontScale
          ? _value.fontScale
          : fontScale // ignore: cast_nullable_to_non_nullable
              as double?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextWithBgImpl with DiagnosticableTreeMixin implements _TextWithBg {
  const _$TextWithBgImpl(
      {required this.text,
      required final List<int> position,
      @JsonKey(name: 'font_scale') this.fontScale,
      required this.color,
      @JsonKey(name: 'bg_color') this.bgColor,
      final String? $type})
      : _position = position,
        $type = $type ?? 'textWithBg';

  factory _$TextWithBgImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextWithBgImplFromJson(json);

  @override
  final String text;
  final List<int> _position;
  @override
  List<int> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

// [x, y]
  @override
  @JsonKey(name: 'font_scale')
  final double? fontScale;
  @override
  final String color;
  @override
  @JsonKey(name: 'bg_color')
  final String? bgColor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.textWithBg(text: $text, position: $position, fontScale: $fontScale, color: $color, bgColor: $bgColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.textWithBg'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('fontScale', fontScale))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('bgColor', bgColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextWithBgImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._position, _position) &&
            (identical(other.fontScale, fontScale) ||
                other.fontScale == fontScale) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      const DeepCollectionEquality().hash(_position),
      fontScale,
      color,
      bgColor);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextWithBgImplCopyWith<_$TextWithBgImpl> get copyWith =>
      __$$TextWithBgImplCopyWithImpl<_$TextWithBgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return textWithBg(text, position, fontScale, color, bgColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return textWithBg?.call(text, position, fontScale, color, bgColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (textWithBg != null) {
      return textWithBg(text, position, fontScale, color, bgColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return textWithBg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return textWithBg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (textWithBg != null) {
      return textWithBg(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextWithBgImplToJson(
      this,
    );
  }
}

abstract class _TextWithBg implements VisualElement {
  const factory _TextWithBg(
      {required final String text,
      required final List<int> position,
      @JsonKey(name: 'font_scale') final double? fontScale,
      required final String color,
      @JsonKey(name: 'bg_color') final String? bgColor}) = _$TextWithBgImpl;

  factory _TextWithBg.fromJson(Map<String, dynamic> json) =
      _$TextWithBgImpl.fromJson;

  String get text;
  List<int> get position; // [x, y]
  @JsonKey(name: 'font_scale')
  double? get fontScale;
  String get color;
  @JsonKey(name: 'bg_color')
  String? get bgColor;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextWithBgImplCopyWith<_$TextWithBgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataPanelImplCopyWith<$Res> {
  factory _$$DataPanelImplCopyWith(
          _$DataPanelImpl value, $Res Function(_$DataPanelImpl) then) =
      __$$DataPanelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> data, List<int> position});
}

/// @nodoc
class __$$DataPanelImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$DataPanelImpl>
    implements _$$DataPanelImplCopyWith<$Res> {
  __$$DataPanelImplCopyWithImpl(
      _$DataPanelImpl _value, $Res Function(_$DataPanelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? position = null,
  }) {
    return _then(_$DataPanelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      position: null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPanelImpl with DiagnosticableTreeMixin implements _DataPanel {
  const _$DataPanelImpl(
      {required final Map<String, String> data,
      required final List<int> position,
      final String? $type})
      : _data = data,
        _position = position,
        $type = $type ?? 'dataPanel';

  factory _$DataPanelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPanelImplFromJson(json);

  final Map<String, String> _data;
  @override
  Map<String, String> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

// 键值对数据
  final List<int> _position;
// 键值对数据
  @override
  List<int> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.dataPanel(data: $data, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.dataPanel'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataPanelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._position, _position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_position));

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPanelImplCopyWith<_$DataPanelImpl> get copyWith =>
      __$$DataPanelImplCopyWithImpl<_$DataPanelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return dataPanel(data, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return dataPanel?.call(data, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (dataPanel != null) {
      return dataPanel(data, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return dataPanel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return dataPanel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (dataPanel != null) {
      return dataPanel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPanelImplToJson(
      this,
    );
  }
}

abstract class _DataPanel implements VisualElement {
  const factory _DataPanel(
      {required final Map<String, String> data,
      required final List<int> position}) = _$DataPanelImpl;

  factory _DataPanel.fromJson(Map<String, dynamic> json) =
      _$DataPanelImpl.fromJson;

  Map<String, String> get data; // 键值对数据
  List<int> get position;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataPanelImplCopyWith<_$DataPanelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutlineImplCopyWith<$Res> {
  factory _$$OutlineImplCopyWith(
          _$OutlineImpl value, $Res Function(_$OutlineImpl) then) =
      __$$OutlineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<int>> points, String color, int? thickness});
}

/// @nodoc
class __$$OutlineImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$OutlineImpl>
    implements _$$OutlineImplCopyWith<$Res> {
  __$$OutlineImplCopyWithImpl(
      _$OutlineImpl _value, $Res Function(_$OutlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? color = null,
    Object? thickness = freezed,
  }) {
    return _then(_$OutlineImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutlineImpl with DiagnosticableTreeMixin implements _Outline {
  const _$OutlineImpl(
      {required final List<List<int>> points,
      required this.color,
      this.thickness,
      final String? $type})
      : _points = points,
        $type = $type ?? 'outline';

  factory _$OutlineImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutlineImplFromJson(json);

  final List<List<int>> _points;
  @override
  List<List<int>> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final String color;
  @override
  final int? thickness;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.outline(points: $points, color: $color, thickness: $thickness)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.outline'))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('thickness', thickness));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutlineImpl &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_points), color, thickness);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutlineImplCopyWith<_$OutlineImpl> get copyWith =>
      __$$OutlineImplCopyWithImpl<_$OutlineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return outline(points, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return outline?.call(points, color, thickness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (outline != null) {
      return outline(points, color, thickness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return outline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return outline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (outline != null) {
      return outline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OutlineImplToJson(
      this,
    );
  }
}

abstract class _Outline implements VisualElement {
  const factory _Outline(
      {required final List<List<int>> points,
      required final String color,
      final int? thickness}) = _$OutlineImpl;

  factory _Outline.fromJson(Map<String, dynamic> json) = _$OutlineImpl.fromJson;

  List<List<int>> get points;
  String get color;
  int? get thickness;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutlineImplCopyWith<_$OutlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoubleArrowImplCopyWith<$Res> {
  factory _$$DoubleArrowImplCopyWith(
          _$DoubleArrowImpl value, $Res Function(_$DoubleArrowImpl) then) =
      __$$DoubleArrowImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<int> start,
      List<int> end,
      String color,
      int? thickness,
      @JsonKey(name: 'tip_length') double? tipLength});
}

/// @nodoc
class __$$DoubleArrowImplCopyWithImpl<$Res>
    extends _$VisualElementCopyWithImpl<$Res, _$DoubleArrowImpl>
    implements _$$DoubleArrowImplCopyWith<$Res> {
  __$$DoubleArrowImplCopyWithImpl(
      _$DoubleArrowImpl _value, $Res Function(_$DoubleArrowImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? color = null,
    Object? thickness = freezed,
    Object? tipLength = freezed,
  }) {
    return _then(_$DoubleArrowImpl(
      start: null == start
          ? _value._start
          : start // ignore: cast_nullable_to_non_nullable
              as List<int>,
      end: null == end
          ? _value._end
          : end // ignore: cast_nullable_to_non_nullable
              as List<int>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as int?,
      tipLength: freezed == tipLength
          ? _value.tipLength
          : tipLength // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoubleArrowImpl with DiagnosticableTreeMixin implements _DoubleArrow {
  const _$DoubleArrowImpl(
      {required final List<int> start,
      required final List<int> end,
      required this.color,
      this.thickness,
      @JsonKey(name: 'tip_length') this.tipLength,
      final String? $type})
      : _start = start,
        _end = end,
        $type = $type ?? 'doubleArrow';

  factory _$DoubleArrowImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoubleArrowImplFromJson(json);

  final List<int> _start;
  @override
  List<int> get start {
    if (_start is EqualUnmodifiableListView) return _start;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_start);
  }

  final List<int> _end;
  @override
  List<int> get end {
    if (_end is EqualUnmodifiableListView) return _end;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_end);
  }

  @override
  final String color;
  @override
  final int? thickness;
  @override
  @JsonKey(name: 'tip_length')
  final double? tipLength;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisualElement.doubleArrow(start: $start, end: $end, color: $color, thickness: $thickness, tipLength: $tipLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisualElement.doubleArrow'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('thickness', thickness))
      ..add(DiagnosticsProperty('tipLength', tipLength));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoubleArrowImpl &&
            const DeepCollectionEquality().equals(other._start, _start) &&
            const DeepCollectionEquality().equals(other._end, _end) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.tipLength, tipLength) ||
                other.tipLength == tipLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_start),
      const DeepCollectionEquality().hash(_end),
      color,
      thickness,
      tipLength);

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoubleArrowImplCopyWith<_$DoubleArrowImpl> get copyWith =>
      __$$DoubleArrowImplCopyWithImpl<_$DoubleArrowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<int>> points, String color,
            String? effect, double? pulseSpeed)
        maskOverlay,
    required TResult Function(List<List<int>> points, String color, int? width)
        polyline,
    required TResult Function(List<int> center, int radius, String color,
            bool? filled, int? thickness)
        circle,
    required TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)
        rectangle,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        arrow,
    required TResult Function(
            List<int> start, List<int> end, String color, int? thickness)
        dashedLine,
    required TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)
        angleArc,
    required TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)
        textWithBg,
    required TResult Function(Map<String, String> data, List<int> position)
        dataPanel,
    required TResult Function(
            List<List<int>> points, String color, int? thickness)
        outline,
    required TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)
        doubleArrow,
  }) {
    return doubleArrow(start, end, color, thickness, tipLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult? Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult? Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult? Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult? Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult? Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult? Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult? Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult? Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult? Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
  }) {
    return doubleArrow?.call(start, end, color, thickness, tipLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<int>> points, String color, String? effect,
            double? pulseSpeed)?
        maskOverlay,
    TResult Function(List<List<int>> points, String color, int? width)?
        polyline,
    TResult Function(List<int> center, int radius, String color, bool? filled,
            int? thickness)?
        circle,
    TResult Function(
            @JsonKey(name: 'top_left') List<int> topLeft,
            @JsonKey(name: 'bottom_right') List<int> bottomRight,
            String color,
            bool? filled,
            int? thickness)?
        rectangle,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        arrow,
    TResult Function(
            List<int> start, List<int> end, String color, int? thickness)?
        dashedLine,
    TResult Function(
            List<int> center,
            int radius,
            @JsonKey(name: 'start_angle') double startAngle,
            @JsonKey(name: 'end_angle') double endAngle,
            String color,
            int? thickness)?
        angleArc,
    TResult Function(
            String text,
            List<int> position,
            @JsonKey(name: 'font_scale') double? fontScale,
            String color,
            @JsonKey(name: 'bg_color') String? bgColor)?
        textWithBg,
    TResult Function(Map<String, String> data, List<int> position)? dataPanel,
    TResult Function(List<List<int>> points, String color, int? thickness)?
        outline,
    TResult Function(List<int> start, List<int> end, String color,
            int? thickness, @JsonKey(name: 'tip_length') double? tipLength)?
        doubleArrow,
    required TResult orElse(),
  }) {
    if (doubleArrow != null) {
      return doubleArrow(start, end, color, thickness, tipLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaskOverlay value) maskOverlay,
    required TResult Function(_Polyline value) polyline,
    required TResult Function(_Circle value) circle,
    required TResult Function(_Rectangle value) rectangle,
    required TResult Function(_Arrow value) arrow,
    required TResult Function(_DashedLine value) dashedLine,
    required TResult Function(_AngleArc value) angleArc,
    required TResult Function(_TextWithBg value) textWithBg,
    required TResult Function(_DataPanel value) dataPanel,
    required TResult Function(_Outline value) outline,
    required TResult Function(_DoubleArrow value) doubleArrow,
  }) {
    return doubleArrow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaskOverlay value)? maskOverlay,
    TResult? Function(_Polyline value)? polyline,
    TResult? Function(_Circle value)? circle,
    TResult? Function(_Rectangle value)? rectangle,
    TResult? Function(_Arrow value)? arrow,
    TResult? Function(_DashedLine value)? dashedLine,
    TResult? Function(_AngleArc value)? angleArc,
    TResult? Function(_TextWithBg value)? textWithBg,
    TResult? Function(_DataPanel value)? dataPanel,
    TResult? Function(_Outline value)? outline,
    TResult? Function(_DoubleArrow value)? doubleArrow,
  }) {
    return doubleArrow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaskOverlay value)? maskOverlay,
    TResult Function(_Polyline value)? polyline,
    TResult Function(_Circle value)? circle,
    TResult Function(_Rectangle value)? rectangle,
    TResult Function(_Arrow value)? arrow,
    TResult Function(_DashedLine value)? dashedLine,
    TResult Function(_AngleArc value)? angleArc,
    TResult Function(_TextWithBg value)? textWithBg,
    TResult Function(_DataPanel value)? dataPanel,
    TResult Function(_Outline value)? outline,
    TResult Function(_DoubleArrow value)? doubleArrow,
    required TResult orElse(),
  }) {
    if (doubleArrow != null) {
      return doubleArrow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoubleArrowImplToJson(
      this,
    );
  }
}

abstract class _DoubleArrow implements VisualElement {
  const factory _DoubleArrow(
          {required final List<int> start,
          required final List<int> end,
          required final String color,
          final int? thickness,
          @JsonKey(name: 'tip_length') final double? tipLength}) =
      _$DoubleArrowImpl;

  factory _DoubleArrow.fromJson(Map<String, dynamic> json) =
      _$DoubleArrowImpl.fromJson;

  List<int> get start;
  List<int> get end;
  String get color;
  int? get thickness;
  @JsonKey(name: 'tip_length')
  double? get tipLength;

  /// Create a copy of VisualElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoubleArrowImplCopyWith<_$DoubleArrowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NavigationState _$NavigationStateFromJson(Map<String, dynamic> json) {
  return _NavigationState.fromJson(json);
}

/// @nodoc
mixin _$NavigationState {
  String get currentOverallState =>
      throw _privateConstructorUsedError; // 对应 NavigationMaster 的状态，如 "BLINDPATH_NAV"
  String get currentBlindPathSubState =>
      throw _privateConstructorUsedError; // 对应 BlindPathNavigator 的子状态，如 "NAVIGATING"
  String get guidanceText => throw _privateConstructorUsedError; // 语音引导文本
  List<VisualElement> get visualizations =>
      throw _privateConstructorUsedError; // 用于UI渲染的可视化元素
  Map<String, dynamic> get stateDetails =>
      throw _privateConstructorUsedError; // 更多详细状态信息（如角度、偏移、障碍物列表、交通灯颜色）
  bool get isBusy => throw _privateConstructorUsedError; // 是否正在处理中（例如：等待模型推理）
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this NavigationState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call(
      {String currentOverallState,
      String currentBlindPathSubState,
      String guidanceText,
      List<VisualElement> visualizations,
      Map<String, dynamic> stateDetails,
      bool isBusy,
      String? errorMessage});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentOverallState = null,
    Object? currentBlindPathSubState = null,
    Object? guidanceText = null,
    Object? visualizations = null,
    Object? stateDetails = null,
    Object? isBusy = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentOverallState: null == currentOverallState
          ? _value.currentOverallState
          : currentOverallState // ignore: cast_nullable_to_non_nullable
              as String,
      currentBlindPathSubState: null == currentBlindPathSubState
          ? _value.currentBlindPathSubState
          : currentBlindPathSubState // ignore: cast_nullable_to_non_nullable
              as String,
      guidanceText: null == guidanceText
          ? _value.guidanceText
          : guidanceText // ignore: cast_nullable_to_non_nullable
              as String,
      visualizations: null == visualizations
          ? _value.visualizations
          : visualizations // ignore: cast_nullable_to_non_nullable
              as List<VisualElement>,
      stateDetails: null == stateDetails
          ? _value.stateDetails
          : stateDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationStateImplCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$NavigationStateImplCopyWith(_$NavigationStateImpl value,
          $Res Function(_$NavigationStateImpl) then) =
      __$$NavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentOverallState,
      String currentBlindPathSubState,
      String guidanceText,
      List<VisualElement> visualizations,
      Map<String, dynamic> stateDetails,
      bool isBusy,
      String? errorMessage});
}

/// @nodoc
class __$$NavigationStateImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationStateImpl>
    implements _$$NavigationStateImplCopyWith<$Res> {
  __$$NavigationStateImplCopyWithImpl(
      _$NavigationStateImpl _value, $Res Function(_$NavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentOverallState = null,
    Object? currentBlindPathSubState = null,
    Object? guidanceText = null,
    Object? visualizations = null,
    Object? stateDetails = null,
    Object? isBusy = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NavigationStateImpl(
      currentOverallState: null == currentOverallState
          ? _value.currentOverallState
          : currentOverallState // ignore: cast_nullable_to_non_nullable
              as String,
      currentBlindPathSubState: null == currentBlindPathSubState
          ? _value.currentBlindPathSubState
          : currentBlindPathSubState // ignore: cast_nullable_to_non_nullable
              as String,
      guidanceText: null == guidanceText
          ? _value.guidanceText
          : guidanceText // ignore: cast_nullable_to_non_nullable
              as String,
      visualizations: null == visualizations
          ? _value._visualizations
          : visualizations // ignore: cast_nullable_to_non_nullable
              as List<VisualElement>,
      stateDetails: null == stateDetails
          ? _value._stateDetails
          : stateDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavigationStateImpl
    with DiagnosticableTreeMixin
    implements _NavigationState {
  const _$NavigationStateImpl(
      {required this.currentOverallState,
      required this.currentBlindPathSubState,
      required this.guidanceText,
      final List<VisualElement> visualizations = const [],
      final Map<String, dynamic> stateDetails = const {},
      this.isBusy = false,
      this.errorMessage})
      : _visualizations = visualizations,
        _stateDetails = stateDetails;

  factory _$NavigationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigationStateImplFromJson(json);

  @override
  final String currentOverallState;
// 对应 NavigationMaster 的状态，如 "BLINDPATH_NAV"
  @override
  final String currentBlindPathSubState;
// 对应 BlindPathNavigator 的子状态，如 "NAVIGATING"
  @override
  final String guidanceText;
// 语音引导文本
  final List<VisualElement> _visualizations;
// 语音引导文本
  @override
  @JsonKey()
  List<VisualElement> get visualizations {
    if (_visualizations is EqualUnmodifiableListView) return _visualizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visualizations);
  }

// 用于UI渲染的可视化元素
  final Map<String, dynamic> _stateDetails;
// 用于UI渲染的可视化元素
  @override
  @JsonKey()
  Map<String, dynamic> get stateDetails {
    if (_stateDetails is EqualUnmodifiableMapView) return _stateDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stateDetails);
  }

// 更多详细状态信息（如角度、偏移、障碍物列表、交通灯颜色）
  @override
  @JsonKey()
  final bool isBusy;
// 是否正在处理中（例如：等待模型推理）
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationState(currentOverallState: $currentOverallState, currentBlindPathSubState: $currentBlindPathSubState, guidanceText: $guidanceText, visualizations: $visualizations, stateDetails: $stateDetails, isBusy: $isBusy, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationState'))
      ..add(DiagnosticsProperty('currentOverallState', currentOverallState))
      ..add(DiagnosticsProperty(
          'currentBlindPathSubState', currentBlindPathSubState))
      ..add(DiagnosticsProperty('guidanceText', guidanceText))
      ..add(DiagnosticsProperty('visualizations', visualizations))
      ..add(DiagnosticsProperty('stateDetails', stateDetails))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationStateImpl &&
            (identical(other.currentOverallState, currentOverallState) ||
                other.currentOverallState == currentOverallState) &&
            (identical(
                    other.currentBlindPathSubState, currentBlindPathSubState) ||
                other.currentBlindPathSubState == currentBlindPathSubState) &&
            (identical(other.guidanceText, guidanceText) ||
                other.guidanceText == guidanceText) &&
            const DeepCollectionEquality()
                .equals(other._visualizations, _visualizations) &&
            const DeepCollectionEquality()
                .equals(other._stateDetails, _stateDetails) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentOverallState,
      currentBlindPathSubState,
      guidanceText,
      const DeepCollectionEquality().hash(_visualizations),
      const DeepCollectionEquality().hash(_stateDetails),
      isBusy,
      errorMessage);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationStateImplCopyWith<_$NavigationStateImpl> get copyWith =>
      __$$NavigationStateImplCopyWithImpl<_$NavigationStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigationStateImplToJson(
      this,
    );
  }
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required final String currentOverallState,
      required final String currentBlindPathSubState,
      required final String guidanceText,
      final List<VisualElement> visualizations,
      final Map<String, dynamic> stateDetails,
      final bool isBusy,
      final String? errorMessage}) = _$NavigationStateImpl;

  factory _NavigationState.fromJson(Map<String, dynamic> json) =
      _$NavigationStateImpl.fromJson;

  @override
  String get currentOverallState; // 对应 NavigationMaster 的状态，如 "BLINDPATH_NAV"
  @override
  String
      get currentBlindPathSubState; // 对应 BlindPathNavigator 的子状态，如 "NAVIGATING"
  @override
  String get guidanceText; // 语音引导文本
  @override
  List<VisualElement> get visualizations; // 用于UI渲染的可视化元素
  @override
  Map<String, dynamic> get stateDetails; // 更多详细状态信息（如角度、偏移、障碍物列表、交通灯颜色）
  @override
  bool get isBusy; // 是否正在处理中（例如：等待模型推理）
  @override
  String? get errorMessage;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationStateImplCopyWith<_$NavigationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
