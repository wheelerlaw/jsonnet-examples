{
  DeploymentConfig(name, imageName):: {
    apiVersion: "apps.openshift.io/v1",
    kind: "DeploymentConfig",
    metadata: {
      creationTimestamp: null,
      labels: { app: name },
      name: name,
    },
    spec: {
      replicas: 1,
      strategy: { resources: {} },
      template: {
        metadata: {
          creationTimestamp: null,
          labels: { app: name },
          name: name
        },
        spec: {
          containers: [
            {
              image: imageName,
              name: name + "-app",
              resources: {}
            },
            {
              image: "wheelerlaw/hm",
              name: name + "-hm",
              resources: {}
            }
          ]
        }
      },
      test: false,
      triggers: null
    },
    status: {
      availableReplicas: 0,
      latestVersion: 0,
      observedGeneration: 0,
      replicas: 0,
      unavailableReplicas: 0,
      updatedReplicas: 0,
    }
  }
}
