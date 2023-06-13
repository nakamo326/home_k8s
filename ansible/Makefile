all:
	ansible-playbook playbook/install_k8s.yaml --ask-become-pass

cluster:
	ansible-playbook playbook/init_cluster.yaml --ask-become-pass
	ansible-playbook playbook/install_tools.yaml --ask-become-pass
	ansible-playbook playbook/join_cluster.yaml --ask-become-pass

reset:
	ansible-playbook playbook/reset_cluster.yaml --ask-become-pass

restart:
	ansible-playbook playbook/restart.yaml --ask-become-pass


.PHONY: all cluster