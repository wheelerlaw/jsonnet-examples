// Run with `jsonnet -y sample3.jsonnet`
local os = import "os.libsonnet";

[
  os.DeploymentConfig("httpd", "centos/httpd"),
  os.DeploymentConfig("mongo", "mongodb")
]
