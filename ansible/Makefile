all:
	ansible-playbook install_k8s.yaml --ask-become-pass

cluster:
	ansible-playbook init_cluster.yaml --ask-become-pass
	ansible-playbook join_cluster.yaml --ask-become-pass

reset:
	ansible-playbook reset_cluster.yaml --ask-become-pass

restart:
	ansible-playbook restart.yaml --ask-become-pass


.PHONY: all cluster