// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  List<PlanEntity> get payloadList => throw _privateConstructorUsedError;
  List<PlanEntity> get payloadSearchList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        idle,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        loading,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        success,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomeState value) idle,
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SuccessHomeState value) success,
    required TResult Function(ErrorHomeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomeState value)? idle,
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SuccessHomeState value)? success,
    TResult? Function(ErrorHomeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomeState value)? idle,
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SuccessHomeState value)? success,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadList = null,
    Object? payloadSearchList = null,
  }) {
    return _then(_value.copyWith(
      payloadList: null == payloadList
          ? _value.payloadList
          : payloadList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
      payloadSearchList: null == payloadSearchList
          ? _value.payloadSearchList
          : payloadSearchList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$IdleHomeStateImplCopyWith(
          _$IdleHomeStateImpl value, $Res Function(_$IdleHomeStateImpl) then) =
      __$$IdleHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList});
}

/// @nodoc
class __$$IdleHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$IdleHomeStateImpl>
    implements _$$IdleHomeStateImplCopyWith<$Res> {
  __$$IdleHomeStateImplCopyWithImpl(
      _$IdleHomeStateImpl _value, $Res Function(_$IdleHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadList = null,
    Object? payloadSearchList = null,
  }) {
    return _then(_$IdleHomeStateImpl(
      payloadList: null == payloadList
          ? _value._payloadList
          : payloadList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
      payloadSearchList: null == payloadSearchList
          ? _value._payloadSearchList
          : payloadSearchList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
    ));
  }
}

/// @nodoc

class _$IdleHomeStateImpl implements IdleHomeState {
  const _$IdleHomeStateImpl(
      {final List<PlanEntity> payloadList = const [],
      final List<PlanEntity> payloadSearchList = const []})
      : _payloadList = payloadList,
        _payloadSearchList = payloadSearchList;

  final List<PlanEntity> _payloadList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadList {
    if (_payloadList is EqualUnmodifiableListView) return _payloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadList);
  }

  final List<PlanEntity> _payloadSearchList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadSearchList {
    if (_payloadSearchList is EqualUnmodifiableListView)
      return _payloadSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadSearchList);
  }

  @override
  String toString() {
    return 'HomeState.idle(payloadList: $payloadList, payloadSearchList: $payloadSearchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._payloadList, _payloadList) &&
            const DeepCollectionEquality()
                .equals(other._payloadSearchList, _payloadSearchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payloadList),
      const DeepCollectionEquality().hash(_payloadSearchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleHomeStateImplCopyWith<_$IdleHomeStateImpl> get copyWith =>
      __$$IdleHomeStateImplCopyWithImpl<_$IdleHomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        idle,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        loading,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        success,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        error,
  }) {
    return idle(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
  }) {
    return idle?.call(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(payloadList, payloadSearchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomeState value) idle,
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SuccessHomeState value) success,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomeState value)? idle,
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SuccessHomeState value)? success,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomeState value)? idle,
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SuccessHomeState value)? success,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleHomeState implements HomeState {
  const factory IdleHomeState(
      {final List<PlanEntity> payloadList,
      final List<PlanEntity> payloadSearchList}) = _$IdleHomeStateImpl;

  @override
  List<PlanEntity> get payloadList;
  @override
  List<PlanEntity> get payloadSearchList;
  @override
  @JsonKey(ignore: true)
  _$$IdleHomeStateImplCopyWith<_$IdleHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadingHomeStateImplCopyWith(_$LoadingHomeStateImpl value,
          $Res Function(_$LoadingHomeStateImpl) then) =
      __$$LoadingHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList});
}

/// @nodoc
class __$$LoadingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeStateImpl>
    implements _$$LoadingHomeStateImplCopyWith<$Res> {
  __$$LoadingHomeStateImplCopyWithImpl(_$LoadingHomeStateImpl _value,
      $Res Function(_$LoadingHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadList = null,
    Object? payloadSearchList = null,
  }) {
    return _then(_$LoadingHomeStateImpl(
      payloadList: null == payloadList
          ? _value._payloadList
          : payloadList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
      payloadSearchList: null == payloadSearchList
          ? _value._payloadSearchList
          : payloadSearchList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
    ));
  }
}

/// @nodoc

class _$LoadingHomeStateImpl implements LoadingHomeState {
  const _$LoadingHomeStateImpl(
      {final List<PlanEntity> payloadList = const [],
      final List<PlanEntity> payloadSearchList = const []})
      : _payloadList = payloadList,
        _payloadSearchList = payloadSearchList;

  final List<PlanEntity> _payloadList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadList {
    if (_payloadList is EqualUnmodifiableListView) return _payloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadList);
  }

  final List<PlanEntity> _payloadSearchList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadSearchList {
    if (_payloadSearchList is EqualUnmodifiableListView)
      return _payloadSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadSearchList);
  }

  @override
  String toString() {
    return 'HomeState.loading(payloadList: $payloadList, payloadSearchList: $payloadSearchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._payloadList, _payloadList) &&
            const DeepCollectionEquality()
                .equals(other._payloadSearchList, _payloadSearchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payloadList),
      const DeepCollectionEquality().hash(_payloadSearchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingHomeStateImplCopyWith<_$LoadingHomeStateImpl> get copyWith =>
      __$$LoadingHomeStateImplCopyWithImpl<_$LoadingHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        idle,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        loading,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        success,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        error,
  }) {
    return loading(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
  }) {
    return loading?.call(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payloadList, payloadSearchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomeState value) idle,
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SuccessHomeState value) success,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomeState value)? idle,
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SuccessHomeState value)? success,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomeState value)? idle,
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SuccessHomeState value)? success,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState(
      {final List<PlanEntity> payloadList,
      final List<PlanEntity> payloadSearchList}) = _$LoadingHomeStateImpl;

  @override
  List<PlanEntity> get payloadList;
  @override
  List<PlanEntity> get payloadSearchList;
  @override
  @JsonKey(ignore: true)
  _$$LoadingHomeStateImplCopyWith<_$LoadingHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SuccessHomeStateImplCopyWith(_$SuccessHomeStateImpl value,
          $Res Function(_$SuccessHomeStateImpl) then) =
      __$$SuccessHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList});
}

/// @nodoc
class __$$SuccessHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SuccessHomeStateImpl>
    implements _$$SuccessHomeStateImplCopyWith<$Res> {
  __$$SuccessHomeStateImplCopyWithImpl(_$SuccessHomeStateImpl _value,
      $Res Function(_$SuccessHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadList = null,
    Object? payloadSearchList = null,
  }) {
    return _then(_$SuccessHomeStateImpl(
      payloadList: null == payloadList
          ? _value._payloadList
          : payloadList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
      payloadSearchList: null == payloadSearchList
          ? _value._payloadSearchList
          : payloadSearchList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessHomeStateImpl implements SuccessHomeState {
  const _$SuccessHomeStateImpl(
      {required final List<PlanEntity> payloadList,
      required final List<PlanEntity> payloadSearchList})
      : _payloadList = payloadList,
        _payloadSearchList = payloadSearchList;

  final List<PlanEntity> _payloadList;
  @override
  List<PlanEntity> get payloadList {
    if (_payloadList is EqualUnmodifiableListView) return _payloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadList);
  }

  final List<PlanEntity> _payloadSearchList;
  @override
  List<PlanEntity> get payloadSearchList {
    if (_payloadSearchList is EqualUnmodifiableListView)
      return _payloadSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadSearchList);
  }

  @override
  String toString() {
    return 'HomeState.success(payloadList: $payloadList, payloadSearchList: $payloadSearchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._payloadList, _payloadList) &&
            const DeepCollectionEquality()
                .equals(other._payloadSearchList, _payloadSearchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payloadList),
      const DeepCollectionEquality().hash(_payloadSearchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessHomeStateImplCopyWith<_$SuccessHomeStateImpl> get copyWith =>
      __$$SuccessHomeStateImplCopyWithImpl<_$SuccessHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        idle,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        loading,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        success,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        error,
  }) {
    return success(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
  }) {
    return success?.call(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(payloadList, payloadSearchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomeState value) idle,
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SuccessHomeState value) success,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomeState value)? idle,
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SuccessHomeState value)? success,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomeState value)? idle,
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SuccessHomeState value)? success,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessHomeState implements HomeState {
  const factory SuccessHomeState(
          {required final List<PlanEntity> payloadList,
          required final List<PlanEntity> payloadSearchList}) =
      _$SuccessHomeStateImpl;

  @override
  List<PlanEntity> get payloadList;
  @override
  List<PlanEntity> get payloadSearchList;
  @override
  @JsonKey(ignore: true)
  _$$SuccessHomeStateImplCopyWith<_$SuccessHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList});
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadList = null,
    Object? payloadSearchList = null,
  }) {
    return _then(_$ErrorHomeStateImpl(
      payloadList: null == payloadList
          ? _value._payloadList
          : payloadList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
      payloadSearchList: null == payloadSearchList
          ? _value._payloadSearchList
          : payloadSearchList // ignore: cast_nullable_to_non_nullable
              as List<PlanEntity>,
    ));
  }
}

/// @nodoc

class _$ErrorHomeStateImpl implements ErrorHomeState {
  const _$ErrorHomeStateImpl(
      {final List<PlanEntity> payloadList = const [],
      final List<PlanEntity> payloadSearchList = const []})
      : _payloadList = payloadList,
        _payloadSearchList = payloadSearchList;

  final List<PlanEntity> _payloadList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadList {
    if (_payloadList is EqualUnmodifiableListView) return _payloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadList);
  }

  final List<PlanEntity> _payloadSearchList;
  @override
  @JsonKey()
  List<PlanEntity> get payloadSearchList {
    if (_payloadSearchList is EqualUnmodifiableListView)
      return _payloadSearchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payloadSearchList);
  }

  @override
  String toString() {
    return 'HomeState.error(payloadList: $payloadList, payloadSearchList: $payloadSearchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._payloadList, _payloadList) &&
            const DeepCollectionEquality()
                .equals(other._payloadSearchList, _payloadSearchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payloadList),
      const DeepCollectionEquality().hash(_payloadSearchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      __$$ErrorHomeStateImplCopyWithImpl<_$ErrorHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        idle,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        loading,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        success,
    required TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)
        error,
  }) {
    return error(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult? Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
  }) {
    return error?.call(payloadList, payloadSearchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        idle,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        loading,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        success,
    TResult Function(
            List<PlanEntity> payloadList, List<PlanEntity> payloadSearchList)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payloadList, payloadSearchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomeState value) idle,
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(SuccessHomeState value) success,
    required TResult Function(ErrorHomeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomeState value)? idle,
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(SuccessHomeState value)? success,
    TResult? Function(ErrorHomeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomeState value)? idle,
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(SuccessHomeState value)? success,
    TResult Function(ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHomeState implements HomeState {
  const factory ErrorHomeState(
      {final List<PlanEntity> payloadList,
      final List<PlanEntity> payloadSearchList}) = _$ErrorHomeStateImpl;

  @override
  List<PlanEntity> get payloadList;
  @override
  List<PlanEntity> get payloadSearchList;
  @override
  @JsonKey(ignore: true)
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
