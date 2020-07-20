import 'package:flutter/material.dart';

class OrganizationClass {
  String description, org_name, owner;
  String org_id;
  bool permission = false;
  OrganizationClass(this.org_id, this.org_name, this.description, this.owner,
      this.permission);
}
