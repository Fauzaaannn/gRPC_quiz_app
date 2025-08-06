// This is a generated file - do not edit.
//
// Generated from quiz.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Soal & jawaban
class QuestionRequest extends $pb.GeneratedMessage {
  factory QuestionRequest({
    $core.String? questionId,
    $core.String? questionText,
    $core.Iterable<$core.String>? choices,
    $core.String? correctAnswer,
  }) {
    final result = create();
    if (questionId != null) result.questionId = questionId;
    if (questionText != null) result.questionText = questionText;
    if (choices != null) result.choices.addAll(choices);
    if (correctAnswer != null) result.correctAnswer = correctAnswer;
    return result;
  }

  QuestionRequest._();

  factory QuestionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QuestionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QuestionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'questionId', protoName: 'questionId')
    ..aOS(2, _omitFieldNames ? '' : 'questionText', protoName: 'questionText')
    ..pPS(3, _omitFieldNames ? '' : 'choices')
    ..aOS(4, _omitFieldNames ? '' : 'correctAnswer', protoName: 'correctAnswer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionRequest clone() => QuestionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionRequest copyWith(void Function(QuestionRequest) updates) =>
      super.copyWith((message) => updates(message as QuestionRequest))
          as QuestionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionRequest create() => QuestionRequest._();
  @$core.override
  QuestionRequest createEmptyInstance() => create();
  static $pb.PbList<QuestionRequest> createRepeated() =>
      $pb.PbList<QuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static QuestionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuestionRequest>(create);
  static QuestionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get questionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set questionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get questionText => $_getSZ(1);
  @$pb.TagNumber(2)
  set questionText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestionText() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestionText() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get choices => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get correctAnswer => $_getSZ(3);
  @$pb.TagNumber(4)
  set correctAnswer($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCorrectAnswer() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrectAnswer() => $_clearField(4);
}

class QuestionResponse extends $pb.GeneratedMessage {
  factory QuestionResponse({
    $core.String? questionId,
    $core.String? questionText,
    $core.Iterable<$core.String>? choices,
  }) {
    final result = create();
    if (questionId != null) result.questionId = questionId;
    if (questionText != null) result.questionText = questionText;
    if (choices != null) result.choices.addAll(choices);
    return result;
  }

  QuestionResponse._();

  factory QuestionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QuestionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QuestionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'questionId', protoName: 'questionId')
    ..aOS(2, _omitFieldNames ? '' : 'questionText', protoName: 'questionText')
    ..pPS(3, _omitFieldNames ? '' : 'choices')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionResponse clone() => QuestionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionResponse copyWith(void Function(QuestionResponse) updates) =>
      super.copyWith((message) => updates(message as QuestionResponse))
          as QuestionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionResponse create() => QuestionResponse._();
  @$core.override
  QuestionResponse createEmptyInstance() => create();
  static $pb.PbList<QuestionResponse> createRepeated() =>
      $pb.PbList<QuestionResponse>();
  @$core.pragma('dart2js:noInline')
  static QuestionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuestionResponse>(create);
  static QuestionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get questionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set questionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get questionText => $_getSZ(1);
  @$pb.TagNumber(2)
  set questionText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestionText() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestionText() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get choices => $_getList(2);
}

class AnswerRequest extends $pb.GeneratedMessage {
  factory AnswerRequest({
    $core.String? studentId,
    $core.String? questionId,
    $core.String? selectedAnswer,
  }) {
    final result = create();
    if (studentId != null) result.studentId = studentId;
    if (questionId != null) result.questionId = questionId;
    if (selectedAnswer != null) result.selectedAnswer = selectedAnswer;
    return result;
  }

  AnswerRequest._();

  factory AnswerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnswerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnswerRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'studentId', protoName: 'studentId')
    ..aOS(2, _omitFieldNames ? '' : 'questionId', protoName: 'questionId')
    ..aOS(3, _omitFieldNames ? '' : 'selectedAnswer',
        protoName: 'selectedAnswer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerRequest clone() => AnswerRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerRequest copyWith(void Function(AnswerRequest) updates) =>
      super.copyWith((message) => updates(message as AnswerRequest))
          as AnswerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerRequest create() => AnswerRequest._();
  @$core.override
  AnswerRequest createEmptyInstance() => create();
  static $pb.PbList<AnswerRequest> createRepeated() =>
      $pb.PbList<AnswerRequest>();
  @$core.pragma('dart2js:noInline')
  static AnswerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnswerRequest>(create);
  static AnswerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get studentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set studentId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStudentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get questionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set questionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get selectedAnswer => $_getSZ(2);
  @$pb.TagNumber(3)
  set selectedAnswer($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSelectedAnswer() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelectedAnswer() => $_clearField(3);
}

class AnswerResult extends $pb.GeneratedMessage {
  factory AnswerResult({
    $core.String? studentId,
    $core.String? questionId,
    $core.bool? isCorrect,
  }) {
    final result = create();
    if (studentId != null) result.studentId = studentId;
    if (questionId != null) result.questionId = questionId;
    if (isCorrect != null) result.isCorrect = isCorrect;
    return result;
  }

  AnswerResult._();

  factory AnswerResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnswerResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnswerResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'studentId', protoName: 'studentId')
    ..aOS(2, _omitFieldNames ? '' : 'questionId', protoName: 'questionId')
    ..aOB(3, _omitFieldNames ? '' : 'isCorrect', protoName: 'isCorrect')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerResult clone() => AnswerResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerResult copyWith(void Function(AnswerResult) updates) =>
      super.copyWith((message) => updates(message as AnswerResult))
          as AnswerResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerResult create() => AnswerResult._();
  @$core.override
  AnswerResult createEmptyInstance() => create();
  static $pb.PbList<AnswerResult> createRepeated() =>
      $pb.PbList<AnswerResult>();
  @$core.pragma('dart2js:noInline')
  static AnswerResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnswerResult>(create);
  static AnswerResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get studentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set studentId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStudentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get questionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set questionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isCorrect => $_getBF(2);
  @$pb.TagNumber(3)
  set isCorrect($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsCorrect() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsCorrect() => $_clearField(3);
}

/// Auth
class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? username,
    $core.String? password,
    $core.String? role,
    $core.String? studentId,
  }) {
    final result = create();
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    if (role != null) result.role = role;
    if (studentId != null) result.studentId = studentId;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..aOS(4, _omitFieldNames ? '' : 'studentId', protoName: 'studentId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get studentId => $_getSZ(3);
  @$pb.TagNumber(4)
  set studentId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStudentId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudentId() => $_clearField(4);
}

class AuthRequest extends $pb.GeneratedMessage {
  factory AuthRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final result = create();
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    return result;
  }

  AuthRequest._();

  factory AuthRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthRequest copyWith(void Function(AuthRequest) updates) =>
      super.copyWith((message) => updates(message as AuthRequest))
          as AuthRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  @$core.override
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  factory AuthResponse({
    $core.bool? success,
    $core.String? message,
    $core.String? role,
    $core.String? studentId,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    if (role != null) result.role = role;
    if (studentId != null) result.studentId = studentId;
    return result;
  }

  AuthResponse._();

  factory AuthResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'role')
    ..aOS(4, _omitFieldNames ? '' : 'studentId', protoName: 'studentId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResponse copyWith(void Function(AuthResponse) updates) =>
      super.copyWith((message) => updates(message as AuthResponse))
          as AuthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  @$core.override
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() =>
      $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get role => $_getSZ(2);
  @$pb.TagNumber(3)
  set role($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get studentId => $_getSZ(3);
  @$pb.TagNumber(4)
  set studentId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStudentId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStudentId() => $_clearField(4);
}

/// Statistik skor mahasiswa
class StudentScore extends $pb.GeneratedMessage {
  factory StudentScore({
    $core.String? studentId,
    $core.int? correctCount,
    $core.int? wrongCount,
  }) {
    final result = create();
    if (studentId != null) result.studentId = studentId;
    if (correctCount != null) result.correctCount = correctCount;
    if (wrongCount != null) result.wrongCount = wrongCount;
    return result;
  }

  StudentScore._();

  factory StudentScore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StudentScore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StudentScore',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'studentId', protoName: 'studentId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'correctCount', $pb.PbFieldType.O3,
        protoName: 'correctCount')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'wrongCount', $pb.PbFieldType.O3,
        protoName: 'wrongCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StudentScore clone() => StudentScore()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StudentScore copyWith(void Function(StudentScore) updates) =>
      super.copyWith((message) => updates(message as StudentScore))
          as StudentScore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudentScore create() => StudentScore._();
  @$core.override
  StudentScore createEmptyInstance() => create();
  static $pb.PbList<StudentScore> createRepeated() =>
      $pb.PbList<StudentScore>();
  @$core.pragma('dart2js:noInline')
  static StudentScore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StudentScore>(create);
  static StudentScore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get studentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set studentId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStudentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStudentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get correctCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set correctCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrectCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrectCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get wrongCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set wrongCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWrongCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearWrongCount() => $_clearField(3);
}

class StudentListResponse extends $pb.GeneratedMessage {
  factory StudentListResponse({
    $core.Iterable<StudentScore>? students,
  }) {
    final result = create();
    if (students != null) result.students.addAll(students);
    return result;
  }

  StudentListResponse._();

  factory StudentListResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StudentListResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StudentListResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..pc<StudentScore>(1, _omitFieldNames ? '' : 'students', $pb.PbFieldType.PM,
        subBuilder: StudentScore.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StudentListResponse clone() => StudentListResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StudentListResponse copyWith(void Function(StudentListResponse) updates) =>
      super.copyWith((message) => updates(message as StudentListResponse))
          as StudentListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StudentListResponse create() => StudentListResponse._();
  @$core.override
  StudentListResponse createEmptyInstance() => create();
  static $pb.PbList<StudentListResponse> createRepeated() =>
      $pb.PbList<StudentListResponse>();
  @$core.pragma('dart2js:noInline')
  static StudentListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StudentListResponse>(create);
  static StudentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StudentScore> get students => $_getList(0);
}

/// CRUD soal
class Question extends $pb.GeneratedMessage {
  factory Question({
    $core.String? questionId,
    $core.String? questionText,
    $core.Iterable<$core.String>? choices,
    $core.String? correctAnswer,
  }) {
    final result = create();
    if (questionId != null) result.questionId = questionId;
    if (questionText != null) result.questionText = questionText;
    if (choices != null) result.choices.addAll(choices);
    if (correctAnswer != null) result.correctAnswer = correctAnswer;
    return result;
  }

  Question._();

  factory Question.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Question.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Question',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'questionId', protoName: 'questionId')
    ..aOS(2, _omitFieldNames ? '' : 'questionText', protoName: 'questionText')
    ..pPS(3, _omitFieldNames ? '' : 'choices')
    ..aOS(4, _omitFieldNames ? '' : 'correctAnswer', protoName: 'correctAnswer')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Question clone() => Question()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Question copyWith(void Function(Question) updates) =>
      super.copyWith((message) => updates(message as Question)) as Question;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Question create() => Question._();
  @$core.override
  Question createEmptyInstance() => create();
  static $pb.PbList<Question> createRepeated() => $pb.PbList<Question>();
  @$core.pragma('dart2js:noInline')
  static Question getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Question>(create);
  static Question? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get questionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set questionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get questionText => $_getSZ(1);
  @$pb.TagNumber(2)
  set questionText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestionText() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestionText() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get choices => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get correctAnswer => $_getSZ(3);
  @$pb.TagNumber(4)
  set correctAnswer($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCorrectAnswer() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrectAnswer() => $_clearField(4);
}

class QuestionList extends $pb.GeneratedMessage {
  factory QuestionList({
    $core.Iterable<Question>? questions,
  }) {
    final result = create();
    if (questions != null) result.questions.addAll(questions);
    return result;
  }

  QuestionList._();

  factory QuestionList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QuestionList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QuestionList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..pc<Question>(1, _omitFieldNames ? '' : 'questions', $pb.PbFieldType.PM,
        subBuilder: Question.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionList clone() => QuestionList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QuestionList copyWith(void Function(QuestionList) updates) =>
      super.copyWith((message) => updates(message as QuestionList))
          as QuestionList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuestionList create() => QuestionList._();
  @$core.override
  QuestionList createEmptyInstance() => create();
  static $pb.PbList<QuestionList> createRepeated() =>
      $pb.PbList<QuestionList>();
  @$core.pragma('dart2js:noInline')
  static QuestionList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuestionList>(create);
  static QuestionList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Question> get questions => $_getList(0);
}

/// Untuk void / tidak ada data
class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();

  Empty._();

  factory Empty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Empty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Empty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'quiz'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty copyWith(void Function(Empty) updates) =>
      super.copyWith((message) => updates(message as Empty)) as Empty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  @$core.override
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
