// This is a generated file - do not edit.
//
// Generated from quiz.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'quiz.pb.dart' as $0;

export 'quiz.pb.dart';

/// === Service utama ===
@$pb.GrpcServiceName('quiz.QuizService')
class QuizServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  QuizServiceClient(super.channel, {super.options, super.interceptors});

  /// --- Auth ---
  $grpc.ResponseFuture<$0.AuthResponse> register(
    $0.User request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> login(
    $0.AuthRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$login, request, options: options);
  }

  /// --- Soal & Jawaban utama ---
  $grpc.ResponseFuture<$0.QuestionResponse> sendQuestion(
    $0.QuestionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$sendQuestion, request, options: options);
  }

  $grpc.ResponseStream<$0.QuestionResponse> receiveQuestion(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$receiveQuestion, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> submitAnswer(
    $0.AnswerRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$submitAnswer, request, options: options);
  }

  $grpc.ResponseStream<$0.AnswerResult> receiveAnswers(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$receiveAnswers, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// --- Statistik jawaban mahasiswa ---
  $grpc.ResponseStream<$0.StudentScore> getStudentScores(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getStudentScores, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// --- CRUD Soal oleh dosen ---
  $grpc.ResponseFuture<$0.Empty> createQuestion(
    $0.Question request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuestionList> getAllQuestions(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllQuestions, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateQuestion(
    $0.Question request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteQuestion(
    $0.Question request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteQuestion, request, options: options);
  }

  // method descriptors

  static final _$register = $grpc.ClientMethod<$0.User, $0.AuthResponse>(
      '/quiz.QuizService/Register',
      ($0.User value) => value.writeToBuffer(),
      $0.AuthResponse.fromBuffer);
  static final _$login = $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
      '/quiz.QuizService/Login',
      ($0.AuthRequest value) => value.writeToBuffer(),
      $0.AuthResponse.fromBuffer);
  static final _$sendQuestion =
      $grpc.ClientMethod<$0.QuestionRequest, $0.QuestionResponse>(
          '/quiz.QuizService/SendQuestion',
          ($0.QuestionRequest value) => value.writeToBuffer(),
          $0.QuestionResponse.fromBuffer);
  static final _$receiveQuestion =
      $grpc.ClientMethod<$0.Empty, $0.QuestionResponse>(
          '/quiz.QuizService/ReceiveQuestion',
          ($0.Empty value) => value.writeToBuffer(),
          $0.QuestionResponse.fromBuffer);
  static final _$submitAnswer = $grpc.ClientMethod<$0.AnswerRequest, $0.Empty>(
      '/quiz.QuizService/SubmitAnswer',
      ($0.AnswerRequest value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$receiveAnswers = $grpc.ClientMethod<$0.Empty, $0.AnswerResult>(
      '/quiz.QuizService/ReceiveAnswers',
      ($0.Empty value) => value.writeToBuffer(),
      $0.AnswerResult.fromBuffer);
  static final _$getStudentScores =
      $grpc.ClientMethod<$0.Empty, $0.StudentScore>(
          '/quiz.QuizService/GetStudentScores',
          ($0.Empty value) => value.writeToBuffer(),
          $0.StudentScore.fromBuffer);
  static final _$createQuestion = $grpc.ClientMethod<$0.Question, $0.Empty>(
      '/quiz.QuizService/CreateQuestion',
      ($0.Question value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$getAllQuestions =
      $grpc.ClientMethod<$0.Empty, $0.QuestionList>(
          '/quiz.QuizService/GetAllQuestions',
          ($0.Empty value) => value.writeToBuffer(),
          $0.QuestionList.fromBuffer);
  static final _$updateQuestion = $grpc.ClientMethod<$0.Question, $0.Empty>(
      '/quiz.QuizService/UpdateQuestion',
      ($0.Question value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$deleteQuestion = $grpc.ClientMethod<$0.Question, $0.Empty>(
      '/quiz.QuizService/DeleteQuestion',
      ($0.Question value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('quiz.QuizService')
abstract class QuizServiceBase extends $grpc.Service {
  $core.String get $name => 'quiz.QuizService';

  QuizServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.AuthResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QuestionRequest, $0.QuestionResponse>(
        'SendQuestion',
        sendQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QuestionRequest.fromBuffer(value),
        ($0.QuestionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.QuestionResponse>(
        'ReceiveQuestion',
        receiveQuestion_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.QuestionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnswerRequest, $0.Empty>(
        'SubmitAnswer',
        submitAnswer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnswerRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.AnswerResult>(
        'ReceiveAnswers',
        receiveAnswers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.AnswerResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.StudentScore>(
        'GetStudentScores',
        getStudentScores_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.StudentScore value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Question, $0.Empty>(
        'CreateQuestion',
        createQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Question.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.QuestionList>(
        'GetAllQuestions',
        getAllQuestions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.QuestionList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Question, $0.Empty>(
        'UpdateQuestion',
        updateQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Question.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Question, $0.Empty>(
        'DeleteQuestion',
        deleteQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Question.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthResponse> register_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.User> $request) async {
    return register($call, await $request);
  }

  $async.Future<$0.AuthResponse> register(
      $grpc.ServiceCall call, $0.User request);

  $async.Future<$0.AuthResponse> login_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.AuthRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$0.AuthResponse> login(
      $grpc.ServiceCall call, $0.AuthRequest request);

  $async.Future<$0.QuestionResponse> sendQuestion_Pre($grpc.ServiceCall $call,
      $async.Future<$0.QuestionRequest> $request) async {
    return sendQuestion($call, await $request);
  }

  $async.Future<$0.QuestionResponse> sendQuestion(
      $grpc.ServiceCall call, $0.QuestionRequest request);

  $async.Stream<$0.QuestionResponse> receiveQuestion_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* receiveQuestion($call, await $request);
  }

  $async.Stream<$0.QuestionResponse> receiveQuestion(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$0.Empty> submitAnswer_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.AnswerRequest> $request) async {
    return submitAnswer($call, await $request);
  }

  $async.Future<$0.Empty> submitAnswer(
      $grpc.ServiceCall call, $0.AnswerRequest request);

  $async.Stream<$0.AnswerResult> receiveAnswers_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* receiveAnswers($call, await $request);
  }

  $async.Stream<$0.AnswerResult> receiveAnswers(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Stream<$0.StudentScore> getStudentScores_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* getStudentScores($call, await $request);
  }

  $async.Stream<$0.StudentScore> getStudentScores(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$0.Empty> createQuestion_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Question> $request) async {
    return createQuestion($call, await $request);
  }

  $async.Future<$0.Empty> createQuestion(
      $grpc.ServiceCall call, $0.Question request);

  $async.Future<$0.QuestionList> getAllQuestions_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getAllQuestions($call, await $request);
  }

  $async.Future<$0.QuestionList> getAllQuestions(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$0.Empty> updateQuestion_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Question> $request) async {
    return updateQuestion($call, await $request);
  }

  $async.Future<$0.Empty> updateQuestion(
      $grpc.ServiceCall call, $0.Question request);

  $async.Future<$0.Empty> deleteQuestion_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Question> $request) async {
    return deleteQuestion($call, await $request);
  }

  $async.Future<$0.Empty> deleteQuestion(
      $grpc.ServiceCall call, $0.Question request);
}
