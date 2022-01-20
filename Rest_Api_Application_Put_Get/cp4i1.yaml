apiVersion: appconnect.ibm.com/v1beta1
kind: IntegrationServer
metadata:
  name: uba-integration-server-second
  namespace: cp4i
spec:
  adminServiceSecure: true
  license:
    accept: true
    license: L-KSBM-C5JEHP
    use: CloudPakForIntegrationNonProduction
  pod:
    containers:
      runtime:
        image: image-registry.openshift-image-registry.svc:5000/cp4i/cp4i:v1
        resources:
          limits:
            cpu: 900m
            memory: 900Mi
          requests:
            cpu: 300m
            memory: 300Mi
  router:
    timeout: 10s
  designerFlowOperation: disabled
  service:
    endpointType: http
  useCommonServices: true
  version: 11.0.0.14-r1-eus
  replicas: 1
  logFormat: basic
