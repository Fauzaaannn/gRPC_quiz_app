// This is a generated file - do not edit.
//
// Generated from quiz.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use questionRequestDescriptor instead')
const QuestionRequest$json = {
  '1': 'QuestionRequest',
  '2': [
    {'1': 'questionId', '3': 1, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'questionText', '3': 2, '4': 1, '5': 9, '10': 'questionText'},
    {'1': 'choices', '3': 3, '4': 3, '5': 9, '10': 'choices'},
    {'1': 'correctAnswer', '3': 4, '4': 1, '5': 9, '10': 'correctAnswer'},
  ],
};

/// Descriptor for `QuestionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionRequestDescriptor = $convert.base64Decode(
    'Cg9RdWVzdGlvblJlcXVlc3QSHgoKcXVlc3Rpb25JZBgBIAEoCVIKcXVlc3Rpb25JZBIiCgxxdW'
    'VzdGlvblRleHQYAiABKAlSDHF1ZXN0aW9uVGV4dBIYCgdjaG9pY2VzGAMgAygJUgdjaG9pY2Vz'
    'EiQKDWNvcnJlY3RBbnN3ZXIYBCABKAlSDWNvcnJlY3RBbnN3ZXI=');

@$core.Deprecated('Use questionResponseDescriptor instead')
const QuestionResponse$json = {
  '1': 'QuestionResponse',
  '2': [
    {'1': 'questionId', '3': 1, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'questionText', '3': 2, '4': 1, '5': 9, '10': 'questionText'},
    {'1': 'choices', '3': 3, '4': 3, '5': 9, '10': 'choices'},
  ],
};

/// Descriptor for `QuestionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionResponseDescriptor = $convert.base64Decode(
    'ChBRdWVzdGlvblJlc3BvbnNlEh4KCnF1ZXN0aW9uSWQYASABKAlSCnF1ZXN0aW9uSWQSIgoMcX'
    'Vlc3Rpb25UZXh0GAIgASgJUgxxdWVzdGlvblRleHQSGAoHY2hvaWNlcxgDIAMoCVIHY2hvaWNl'
    'cw==');

@$core.Deprecated('Use answerRequestDescriptor instead')
const AnswerRequest$json = {
  '1': 'AnswerRequest',
  '2': [
    {'1': 'studentId', '3': 1, '4': 1, '5': 9, '10': 'studentId'},
    {'1': 'questionId', '3': 2, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'selectedAnswer', '3': 3, '4': 1, '5': 9, '10': 'selectedAnswer'},
  ],
};

/// Descriptor for `AnswerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerRequestDescriptor = $convert.base64Decode(
    'Cg1BbnN3ZXJSZXF1ZXN0EhwKCXN0dWRlbnRJZBgBIAEoCVIJc3R1ZGVudElkEh4KCnF1ZXN0aW'
    '9uSWQYAiABKAlSCnF1ZXN0aW9uSWQSJgoOc2VsZWN0ZWRBbnN3ZXIYAyABKAlSDnNlbGVjdGVk'
    'QW5zd2Vy');

@$core.Deprecated('Use answerResultDescriptor instead')
const AnswerResult$json = {
  '1': 'AnswerResult',
  '2': [
    {'1': 'studentId', '3': 1, '4': 1, '5': 9, '10': 'studentId'},
    {'1': 'questionId', '3': 2, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'isCorrect', '3': 3, '4': 1, '5': 8, '10': 'isCorrect'},
  ],
};

/// Descriptor for `AnswerResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerResultDescriptor = $convert.base64Decode(
    'CgxBbnN3ZXJSZXN1bHQSHAoJc3R1ZGVudElkGAEgASgJUglzdHVkZW50SWQSHgoKcXVlc3Rpb2'
    '5JZBgCIAEoCVIKcXVlc3Rpb25JZBIcCglpc0NvcnJlY3QYAyABKAhSCWlzQ29ycmVjdA==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
    {'1': 'studentId', '3': 4, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgCIAEoCVIIcG'
    'Fzc3dvcmQSEgoEcm9sZRgDIAEoCVIEcm9sZRIcCglzdHVkZW50SWQYBCABKAlSCXN0dWRlbnRJ'
    'ZA==');

@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = {
  '1': 'AuthRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode(
    'CgtBdXRoUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAi'
    'ABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use authResponseDescriptor instead')
const AuthResponse$json = {
  '1': 'AuthResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
    {'1': 'studentId', '3': 4, '4': 1, '5': 9, '10': 'studentId'},
  ],
};

/// Descriptor for `AuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode(
    'CgxBdXRoUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGAIgAS'
    'gJUgdtZXNzYWdlEhIKBHJvbGUYAyABKAlSBHJvbGUSHAoJc3R1ZGVudElkGAQgASgJUglzdHVk'
    'ZW50SWQ=');

@$core.Deprecated('Use studentScoreDescriptor instead')
const StudentScore$json = {
  '1': 'StudentScore',
  '2': [
    {'1': 'studentId', '3': 1, '4': 1, '5': 9, '10': 'studentId'},
    {'1': 'correctCount', '3': 2, '4': 1, '5': 5, '10': 'correctCount'},
    {'1': 'wrongCount', '3': 3, '4': 1, '5': 5, '10': 'wrongCount'},
  ],
};

/// Descriptor for `StudentScore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentScoreDescriptor = $convert.base64Decode(
    'CgxTdHVkZW50U2NvcmUSHAoJc3R1ZGVudElkGAEgASgJUglzdHVkZW50SWQSIgoMY29ycmVjdE'
    'NvdW50GAIgASgFUgxjb3JyZWN0Q291bnQSHgoKd3JvbmdDb3VudBgDIAEoBVIKd3JvbmdDb3Vu'
    'dA==');

@$core.Deprecated('Use studentListResponseDescriptor instead')
const StudentListResponse$json = {
  '1': 'StudentListResponse',
  '2': [
    {
      '1': 'students',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.quiz.StudentScore',
      '10': 'students'
    },
  ],
};

/// Descriptor for `StudentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List studentListResponseDescriptor = $convert.base64Decode(
    'ChNTdHVkZW50TGlzdFJlc3BvbnNlEi4KCHN0dWRlbnRzGAEgAygLMhIucXVpei5TdHVkZW50U2'
    'NvcmVSCHN0dWRlbnRz');

@$core.Deprecated('Use questionDescriptor instead')
const Question$json = {
  '1': 'Question',
  '2': [
    {'1': 'questionId', '3': 1, '4': 1, '5': 9, '10': 'questionId'},
    {'1': 'questionText', '3': 2, '4': 1, '5': 9, '10': 'questionText'},
    {'1': 'choices', '3': 3, '4': 3, '5': 9, '10': 'choices'},
    {'1': 'correctAnswer', '3': 4, '4': 1, '5': 9, '10': 'correctAnswer'},
  ],
};

/// Descriptor for `Question`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDescriptor = $convert.base64Decode(
    'CghRdWVzdGlvbhIeCgpxdWVzdGlvbklkGAEgASgJUgpxdWVzdGlvbklkEiIKDHF1ZXN0aW9uVG'
    'V4dBgCIAEoCVIMcXVlc3Rpb25UZXh0EhgKB2Nob2ljZXMYAyADKAlSB2Nob2ljZXMSJAoNY29y'
    'cmVjdEFuc3dlchgEIAEoCVINY29ycmVjdEFuc3dlcg==');

@$core.Deprecated('Use questionListDescriptor instead')
const QuestionList$json = {
  '1': 'QuestionList',
  '2': [
    {
      '1': 'questions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.quiz.Question',
      '10': 'questions'
    },
  ],
};

/// Descriptor for `QuestionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionListDescriptor = $convert.base64Decode(
    'CgxRdWVzdGlvbkxpc3QSLAoJcXVlc3Rpb25zGAEgAygLMg4ucXVpei5RdWVzdGlvblIJcXVlc3'
    'Rpb25z');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor =
    $convert.base64Decode('CgVFbXB0eQ==');
