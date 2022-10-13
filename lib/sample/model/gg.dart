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
  List<String>? vs;
  bool? isFullData;
  String? msg;

  Config({
    this.vs,
    this.isFullData,
    this.msg,
  });

  Config.fromJson(Map<String, dynamic> json) {
    vs = json['vs'].cast<String>();
    isFullData = json['isFullData'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vs'] = this.vs;
    data['isFullData'] = this.isFullData;
    data['msg'] = this.msg;
    return data;
  }
}
