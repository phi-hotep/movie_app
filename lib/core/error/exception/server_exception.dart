// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

enum ServerExceptionType {
  requestCancelled,

  badCertificate,

  unauthorisedRequest,

  connectionError,

  badRequest,

  notFound,

  methodNotAllowed,

  notAcceptable,

  requestTimeout,

  sendTimeout,

  recieveTimeout,

  conflict,

  internalServerError,

  notImplemented,

  serviceUnavailable,

  SocketException,

  formatException,

  unableToProcess,

  defaultError,

  unexpectedError,

  unknown
}

class ServerException extends Equatable implements Exception {
  final String name, message;
  final String? code;
  final int? statusCode;
  final ServerExceptionType exceptionType;

  ServerException({
    this.code,
    required this.message,
    this.exceptionType = ServerExceptionType.unexpectedError,
    int? statusCode,
  })  : statusCode = statusCode ?? 500,
        name = exceptionType.name;

  factory ServerException.fromDioError(dynamic error) {
    late ServerException serverException;
    try {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.cancel:
            serverException = ServerException(
                exceptionType: ServerExceptionType.requestCancelled,
                statusCode: error.response?.statusCode,
                message: 'Request to the server has been canceled');
            break;

          case DioErrorType.connectionTimeout:
            serverException = ServerException(
                exceptionType: ServerExceptionType.requestTimeout,
                statusCode: error.response?.statusCode,
                message: 'Connection timeout');
            break;

          case DioErrorType.receiveTimeout:
            serverException = ServerException(
                exceptionType: ServerExceptionType.recieveTimeout,
                statusCode: error.response?.statusCode,
                message: 'Receive timeout');
            break;

          case DioErrorType.sendTimeout:
            serverException = ServerException(
                exceptionType: ServerExceptionType.sendTimeout,
                statusCode: error.response?.statusCode,
                message: 'Send timeout');
            break;

          case DioErrorType.connectionError:
            serverException = ServerException(
                exceptionType: ServerExceptionType.connectionError,
                message: 'Connection error');
            break;
          case DioErrorType.badCertificate:
            serverException = ServerException(
                exceptionType: ServerExceptionType.badCertificate,
                message: 'Bad certificate');
            break;
          case DioErrorType.unknown:
            if (error.error
                .toString()
                .contains(ServerExceptionType.SocketException.name)) {
              serverException = ServerException(
                  statusCode: error.response?.statusCode,
                  message: 'Verify your internet connection');
            } else {
              serverException = ServerException(
                  exceptionType: ServerExceptionType.unexpectedError,
                  statusCode: error.response?.statusCode,
                  message: 'Unexpected error');
            }
            break;

          case DioErrorType.badResponse:
            switch (error.response?.statusCode) {
              case 400:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.badRequest,
                    message: 'Bad request.');
                break;
              case 401:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.unauthorisedRequest,
                    message: 'Authentication failure');
                break;
              case 403:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.unauthorisedRequest,
                    message: 'User is not authorized to access API');
                break;
              case 404:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.notFound,
                    message: 'Request ressource does not exist');
                break;
              case 405:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.unauthorisedRequest,
                    message: 'Operation not allowed');
                break;
              case 415:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.notImplemented,
                    message: 'Media type unsupported');
                break;
              case 422:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.unableToProcess,
                    message: 'validation data failure');
                break;
              case 429:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.conflict,
                    message: 'too much requests');
                break;
              case 500:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.internalServerError,
                    message: 'Internal server error');
                break;
              case 503:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.serviceUnavailable,
                    message: 'Service unavailable');
                break;
              default:
                serverException = ServerException(
                    exceptionType: ServerExceptionType.unexpectedError,
                    message: 'Unexpected error');
            }
            break;
        }
      } else {
        serverException = ServerException(
            exceptionType: ServerExceptionType.unexpectedError,
            message: 'Unexpected error');
      }
    } on FormatException catch (e) {
      serverException = ServerException(
          exceptionType: ServerExceptionType.formatException,
          message: e.message);
    } on Exception catch (_) {
      serverException = ServerException(
          exceptionType: ServerExceptionType.unexpectedError,
          message: 'Unexpected error');
    }
    return serverException;
  }

  @override
  List<Object?> get props => [name, code, statusCode, exceptionType];
}
