class GG {
  String? pkg;
  Config? config;

  GG({
    this.pkg,
    this.config,
  });

  GG.fromJson(Map<String, dynamic> json) {
    pkg = json['pkg'];
    config =
        json['config'] != null ? new Config.fromJson(json['config']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pkg'] = this.pkg;
    if (this.config != null) {
      data['config'] = this.config!.toJson();
    }
    return data;
  }
}

class Config {
  bool? isReady;
  bool? isFullData;
  String? msg;

  Config({
    this.isReady,
    this.isFullData,
    this.msg,
  });

  Config.fromJson(Map<String, dynamic> json) {
    isReady = json['isReady'];
    isFullData = json['isFullData'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isReady'] = this.isReady;
    data['isFullData'] = this.isFullData;
    data['msg'] = this.msg;
    return data;
  }
}
