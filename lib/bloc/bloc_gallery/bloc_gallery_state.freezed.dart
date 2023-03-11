// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocGalleryState {
  List<XFile> get files => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocGalleryStateCopyWith<BlocGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocGalleryStateCopyWith<$Res> {
  factory $BlocGalleryStateCopyWith(
          BlocGalleryState value, $Res Function(BlocGalleryState) then) =
      _$BlocGalleryStateCopyWithImpl<$Res, BlocGalleryState>;
  @useResult
  $Res call({List<XFile> files});
}

/// @nodoc
class _$BlocGalleryStateCopyWithImpl<$Res, $Val extends BlocGalleryState>
    implements $BlocGalleryStateCopyWith<$Res> {
  _$BlocGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlocGalleryStateCopyWith<$Res>
    implements $BlocGalleryStateCopyWith<$Res> {
  factory _$$_BlocGalleryStateCopyWith(
          _$_BlocGalleryState value, $Res Function(_$_BlocGalleryState) then) =
      __$$_BlocGalleryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> files});
}

/// @nodoc
class __$$_BlocGalleryStateCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$_BlocGalleryState>
    implements _$$_BlocGalleryStateCopyWith<$Res> {
  __$$_BlocGalleryStateCopyWithImpl(
      _$_BlocGalleryState _value, $Res Function(_$_BlocGalleryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$_BlocGalleryState(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$_BlocGalleryState implements _BlocGalleryState {
  const _$_BlocGalleryState({required final List<XFile> files})
      : _files = files;

  final List<XFile> _files;
  @override
  List<XFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'BlocGalleryState(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlocGalleryState &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocGalleryStateCopyWith<_$_BlocGalleryState> get copyWith =>
      __$$_BlocGalleryStateCopyWithImpl<_$_BlocGalleryState>(this, _$identity);
}

abstract class _BlocGalleryState implements BlocGalleryState {
  const factory _BlocGalleryState({required final List<XFile> files}) =
      _$_BlocGalleryState;

  @override
  List<XFile> get files;
  @override
  @JsonKey(ignore: true)
  _$$_BlocGalleryStateCopyWith<_$_BlocGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}
