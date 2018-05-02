// Run with `jsonnet sample1.jsonnet`
local os = import "os.libsonnet";

os.DeploymentConfig("httpd", "centos/httpd")
