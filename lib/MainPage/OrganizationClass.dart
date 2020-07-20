import 'package:flutter/material.dart';

class OrganizationClass {
  String description, orgName, owner;
  String orgId;
  bool permission = false;
  OrganizationClass(this.orgId, this.orgName, this.description, this.owner,
      this.permission);
}
