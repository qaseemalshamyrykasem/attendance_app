/// الكيانات الأساسية للنظام
library;

import '../../data/models/models.dart';

// ============================================
// كيان الطالب
// ============================================

/// كيان الطالب - يمثل بيانات الطالب في النظام
class StudentEntity {
  final String id;
  final String name;
  final String studentId;
  final String? departmentId;
  final String? departmentName;
  final int? level;
  final String? sectionId;
  final String? sectionName;
  final String? phone;
  final String? photo;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const StudentEntity({
    required this.id,
    required this.name,
    required this.studentId,
    this.departmentId,
    this.departmentName,
    this.level,
    this.sectionId,
    this.sectionName,
    this.phone,
    this.photo,
    this.createdAt,
    this.updatedAt,
  });

  /// تحويل من Model
  factory StudentEntity.fromModel(Student model) {
    return StudentEntity(
      id: model.id,
      name: model.name,
      studentId: model.studentId,
      departmentId: model.departmentId,
      departmentName: model.departmentName,
      level: model.level,
      sectionId: model.sectionId,
      sectionName: model.sectionName,
      phone: model.phone,
      photo: model.photo,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  /// تحويل إلى Model
  Student toModel() {
    return Student(
      id: id,
      name: name,
      studentId: studentId,
      departmentId: departmentId,
      departmentName: departmentName,
      level: level,
      sectionId: sectionId,
      sectionName: sectionName,
      phone: phone,
      photo: photo,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ============================================
// كيان الحضور
// ============================================

/// كيان الحضور - يمثل تسجيل حضور طالب
class AttendanceEntity {
  final String id;
  final String sessionId;
  final String studentId;
  final StudentEntity? student;
  final DateTime timestamp;
  final String status;
  final String? deviceId;
  final String? hash;

  const AttendanceEntity({
    required this.id,
    required this.sessionId,
    required this.studentId,
    this.student,
    required this.timestamp,
    this.status = 'present',
    this.deviceId,
    this.hash,
  });

  /// تحويل من Model
  factory AttendanceEntity.fromModel(Attendance model) {
    return AttendanceEntity(
      id: model.id,
      sessionId: model.sessionId,
      studentId: model.studentId,
      student: model.student != null ? StudentEntity.fromModel(model.student!) : null,
      timestamp: model.timestamp,
      status: model.status,
      deviceId: model.deviceId,
      hash: model.hash,
    );
  }
}

// ============================================
// كيان الجلسة
// ============================================

/// كيان الجلسة - يمثل جلسة حضور
class SessionEntity {
  final String id;
  final String courseId;
  final String? courseName;
  final String sectionId;
  final String? sectionName;
  final DateTime date;
  final DateTime startTime;
  final DateTime? endTime;
  final String status;
  final String? ip;
  final int? port;
  final String? token;
  final String? qrData;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const SessionEntity({
    required this.id,
    required this.courseId,
    this.courseName,
    required this.sectionId,
    this.sectionName,
    required this.date,
    required this.startTime,
    this.endTime,
    this.status = 'created',
    this.ip,
    this.port,
    this.token,
    this.qrData,
    this.createdAt,
    this.updatedAt,
  });

  /// تحويل من Model
  factory SessionEntity.fromModel(Session model) {
    return SessionEntity(
      id: model.id,
      courseId: model.courseId,
      courseName: model.courseName,
      sectionId: model.sectionId,
      sectionName: model.sectionName,
      date: model.date,
      startTime: model.startTime,
      endTime: model.endTime,
      status: model.status,
      ip: model.ip,
      port: model.port,
      token: model.token,
      qrData: model.qrData,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }
}
