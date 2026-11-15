// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaskOverlayImpl _$$MaskOverlayImplFromJson(Map<String, dynamic> json) =>
    _$MaskOverlayImpl(
      points: (json['points'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
          .toList(),
      color: json['color'] as String,
      effect: json['effect'] as String?,
      pulseSpeed: (json['pulseSpeed'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MaskOverlayImplToJson(_$MaskOverlayImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'color': instance.color,
      'effect': instance.effect,
      'pulseSpeed': instance.pulseSpeed,
      'runtimeType': instance.$type,
    };

_$PolylineImpl _$$PolylineImplFromJson(Map<String, dynamic> json) =>
    _$PolylineImpl(
      points: (json['points'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
          .toList(),
      color: json['color'] as String,
      width: (json['width'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PolylineImplToJson(_$PolylineImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'color': instance.color,
      'width': instance.width,
      'runtimeType': instance.$type,
    };

_$CircleImpl _$$CircleImplFromJson(Map<String, dynamic> json) => _$CircleImpl(
      center: (json['center'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      radius: (json['radius'] as num).toInt(),
      color: json['color'] as String,
      filled: json['filled'] as bool?,
      thickness: (json['thickness'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CircleImplToJson(_$CircleImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
      'radius': instance.radius,
      'color': instance.color,
      'filled': instance.filled,
      'thickness': instance.thickness,
      'runtimeType': instance.$type,
    };

_$RectangleImpl _$$RectangleImplFromJson(Map<String, dynamic> json) =>
    _$RectangleImpl(
      topLeft: (json['top_left'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      bottomRight: (json['bottom_right'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      color: json['color'] as String,
      filled: json['filled'] as bool?,
      thickness: (json['thickness'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RectangleImplToJson(_$RectangleImpl instance) =>
    <String, dynamic>{
      'top_left': instance.topLeft,
      'bottom_right': instance.bottomRight,
      'color': instance.color,
      'filled': instance.filled,
      'thickness': instance.thickness,
      'runtimeType': instance.$type,
    };

_$ArrowImpl _$$ArrowImplFromJson(Map<String, dynamic> json) => _$ArrowImpl(
      start: (json['start'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      end: (json['end'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      color: json['color'] as String,
      thickness: (json['thickness'] as num?)?.toInt(),
      tipLength: (json['tip_length'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArrowImplToJson(_$ArrowImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'color': instance.color,
      'thickness': instance.thickness,
      'tip_length': instance.tipLength,
      'runtimeType': instance.$type,
    };

_$DashedLineImpl _$$DashedLineImplFromJson(Map<String, dynamic> json) =>
    _$DashedLineImpl(
      start: (json['start'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      end: (json['end'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      color: json['color'] as String,
      thickness: (json['thickness'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DashedLineImplToJson(_$DashedLineImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'color': instance.color,
      'thickness': instance.thickness,
      'runtimeType': instance.$type,
    };

_$AngleArcImpl _$$AngleArcImplFromJson(Map<String, dynamic> json) =>
    _$AngleArcImpl(
      center: (json['center'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      radius: (json['radius'] as num).toInt(),
      startAngle: (json['start_angle'] as num).toDouble(),
      endAngle: (json['end_angle'] as num).toDouble(),
      color: json['color'] as String,
      thickness: (json['thickness'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AngleArcImplToJson(_$AngleArcImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
      'radius': instance.radius,
      'start_angle': instance.startAngle,
      'end_angle': instance.endAngle,
      'color': instance.color,
      'thickness': instance.thickness,
      'runtimeType': instance.$type,
    };

_$TextWithBgImpl _$$TextWithBgImplFromJson(Map<String, dynamic> json) =>
    _$TextWithBgImpl(
      text: json['text'] as String,
      position: (json['position'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      fontScale: (json['font_scale'] as num?)?.toDouble(),
      color: json['color'] as String,
      bgColor: json['bg_color'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextWithBgImplToJson(_$TextWithBgImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'position': instance.position,
      'font_scale': instance.fontScale,
      'color': instance.color,
      'bg_color': instance.bgColor,
      'runtimeType': instance.$type,
    };

_$DataPanelImpl _$$DataPanelImplFromJson(Map<String, dynamic> json) =>
    _$DataPanelImpl(
      data: Map<String, String>.from(json['data'] as Map),
      position: (json['position'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DataPanelImplToJson(_$DataPanelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'position': instance.position,
      'runtimeType': instance.$type,
    };

_$OutlineImpl _$$OutlineImplFromJson(Map<String, dynamic> json) =>
    _$OutlineImpl(
      points: (json['points'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
          .toList(),
      color: json['color'] as String,
      thickness: (json['thickness'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OutlineImplToJson(_$OutlineImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'color': instance.color,
      'thickness': instance.thickness,
      'runtimeType': instance.$type,
    };

_$DoubleArrowImpl _$$DoubleArrowImplFromJson(Map<String, dynamic> json) =>
    _$DoubleArrowImpl(
      start: (json['start'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      end: (json['end'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      color: json['color'] as String,
      thickness: (json['thickness'] as num?)?.toInt(),
      tipLength: (json['tip_length'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DoubleArrowImplToJson(_$DoubleArrowImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'color': instance.color,
      'thickness': instance.thickness,
      'tip_length': instance.tipLength,
      'runtimeType': instance.$type,
    };

_$NavigationStateImpl _$$NavigationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationStateImpl(
      currentOverallState: json['currentOverallState'] as String,
      currentBlindPathSubState: json['currentBlindPathSubState'] as String,
      guidanceText: json['guidanceText'] as String,
      visualizations: (json['visualizations'] as List<dynamic>?)
              ?.map((e) => VisualElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stateDetails: json['stateDetails'] as Map<String, dynamic>? ?? const {},
      isBusy: json['isBusy'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$NavigationStateImplToJson(
        _$NavigationStateImpl instance) =>
    <String, dynamic>{
      'currentOverallState': instance.currentOverallState,
      'currentBlindPathSubState': instance.currentBlindPathSubState,
      'guidanceText': instance.guidanceText,
      'visualizations': instance.visualizations,
      'stateDetails': instance.stateDetails,
      'isBusy': instance.isBusy,
      'errorMessage': instance.errorMessage,
    };
