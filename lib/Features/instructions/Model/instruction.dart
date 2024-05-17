// import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'doctor.dart';
import 'health_advice.dart';
import 'spec.dart';

class InstructionModels extends Equatable {
  final HealthAdvice healthAdvice;
  final Doctor doctor;
  final Spec spec;

  const InstructionModels(
      {required this.healthAdvice, required this.doctor, required this.spec});

  factory InstructionModels.fromJson(Map<String, dynamic> json) =>
      InstructionModels(
        healthAdvice: HealthAdvice.fromJson(json as Map<String, dynamic>),
        doctor: Doctor.fromJson(json as Map<String, dynamic>),
        spec: Spec.fromJson(json as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'healthAdvice': healthAdvice.toJson(),
        'doctor': doctor.toJson(),
        'spec': spec.toJson
      };

  @override
  List<Object?> get props => [healthAdvice, doctor, spec];
}
