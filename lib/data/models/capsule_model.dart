import 'dart:convert';

List<CapsuleModel> capsuleModelFromJson(String str) => List<CapsuleModel>.from(
    json.decode(str).map((x) => CapsuleModel.fromJson(x)));

String capsuleModelToJson(List<CapsuleModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CapsuleModel {
  CapsuleModel({
    required this.capsuleSerial,
    required this.capsuleId,
    required this.status,
    required this.originalLaunch,
    required this.originalLaunchUnix,
    required this.missions,
    required this.landings,
    required this.type,
    required this.details,
    required this.reuseCount,
  });

  final String capsuleSerial;
  final String capsuleId;
  final String status;
  final DateTime originalLaunch;
  final int originalLaunchUnix;
  final List<Mission> missions;
  final int landings;
  final String type;
  final String details;
  final int reuseCount;

  factory CapsuleModel.fromJson(Map<String, dynamic> json) => CapsuleModel(
        capsuleSerial: json["capsule_serial"],
        capsuleId: json["capsule_id"],
        status: json["status"],
        originalLaunch: json["original_launch"],
        originalLaunchUnix: json["original_launch_unix"],
        missions: List<Mission>.from(
          json["missions"].map((x) => Mission.fromJson(x)),
        ),
        landings: json["landings"],
        type: json["type"],
        details: json["details"],
        reuseCount: json["reuse_count"],
      );

  Map<String, dynamic> toJson() => {
        "capsule_serial": capsuleSerial,
        "capsule_id": capsuleId,
        "status": status,
        "original_launch": originalLaunch.toIso8601String(),
        "original_launch_unix": originalLaunchUnix,
        "missions": List<dynamic>.from(missions.map((x) => x.toJson())),
        "landings": landings,
        "type": type,
        "details": details,
        "reuse_count": reuseCount,
      };

  static List<CapsuleModel> dummyData() {
    return [
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C101',
        capsuleId: 'dragon1',
        status: 'retired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COTS 1', flight: 0),
          Mission(name: 'COTS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 1.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C204',
        capsuleId: 'dragon90',
        status: 'imtired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COKS 1', flight: 0),
          Mission(name: 'COKS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 9.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C204',
        capsuleId: 'dragon90',
        status: 'imtired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COKS 1', flight: 0),
          Mission(name: 'COKS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 9.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C204',
        capsuleId: 'dragon90',
        status: 'imtired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COKS 1', flight: 0),
          Mission(name: 'COKS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 9.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
      CapsuleModel(
        capsuleSerial: 'C204',
        capsuleId: 'dragon90',
        status: 'imtired',
        originalLaunch: DateTime.now(),
        originalLaunchUnix: 12121212,
        missions: [
          Mission(name: 'COKS 1', flight: 0),
          Mission(name: 'COKS 2', flight: 1),
        ],
        landings: 1,
        type: 'Dragon 9.0',
        details: 'Reentered after three weeks in orbit',
        reuseCount: 1,
      ),
    ];
  }

  @override
  String toString() {
    return 'CapsuleModel(capsuleSerial: $capsuleSerial, capsuleId: $capsuleId, status: $status, originalLaunch: $originalLaunch, originalLaunchUnix: $originalLaunchUnix, missions: $missions, landings: $landings, type: $type, details: $details, reuseCount: $reuseCount)';
  }
}

class Mission {
  Mission({
    required this.name,
    required this.flight,
  });

  String name;
  int flight;

  factory Mission.fromJson(Map<String, dynamic> json) => Mission(
        name: json["name"],
        flight: json["flight"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "flight": flight,
      };
}
