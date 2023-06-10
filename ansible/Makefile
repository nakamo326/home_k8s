all:
	ansible-playbook install_k8s.yaml --ask-become-pass

cluster:
	ansible-playbook init_cluster.yaml --ask-become-pass
	ansible-playbook join_cluster.yaml --ask-become-pass