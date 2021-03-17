class JwtUser {
  String? givenName;
  String? jti;
  String? httpSchemasMicrosoftComWs200806IdentityClaimsRole;
  String? uniqueName;
  int? nbf;
  int? exp;
  String? iss;

  JwtUser(
      {this.givenName,
      this.jti,
      this.httpSchemasMicrosoftComWs200806IdentityClaimsRole,
      this.uniqueName,
      this.nbf,
      this.exp,
      this.iss});

  JwtUser.fromJson(Map<String, dynamic> json) {
    givenName = json['given_name'];
    jti = json['jti'];
    httpSchemasMicrosoftComWs200806IdentityClaimsRole =
        json['http://schemas.microsoft.com/ws/2008/06/identity/claims/role'];
    uniqueName = json['unique_name'];
    nbf = json['nbf'];
    exp = json['exp'];
    iss = json['iss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['given_name'] = this.givenName;
    data['jti'] = this.jti;
    data['http://schemas.microsoft.com/ws/2008/06/identity/claims/role'] =
        this.httpSchemasMicrosoftComWs200806IdentityClaimsRole;
    data['unique_name'] = this.uniqueName;
    data['nbf'] = this.nbf;
    data['exp'] = this.exp;
    data['iss'] = this.iss;
    return data;
  }
}
