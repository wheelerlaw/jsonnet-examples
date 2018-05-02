// Run with `jsonnet -m . sample2.jsonnet`
local os = import "os.libsonnet";

{
  "httpd-dc.json": os.DeploymentConfig("httpd", "centos/httpd"),
  "mongo-dc.json": os.DeploymentConfig("mongo", "mongodb"),
}
