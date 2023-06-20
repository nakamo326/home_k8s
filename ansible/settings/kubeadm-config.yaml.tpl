apiVersion: kubeadm.k8s.io/v1beta3
kind: ClusterConfiguration
clusterName: home_k8s
apiServer:
  extraArgs:
    advertise-address: {{ ansible_host }}
controllerManager:
  extraArgs:
    bind-address: 0.0.0.0
scheduler:
  extraArgs:
    bind-address: 0.0.0.0