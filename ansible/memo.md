### sshの鍵追加
ssh-copy-id -i ~/.ssh/key.pub user@host

### クラスター
master
sudo kubeadm init \
  --apiserver-advertise-address=<your-master-ip> \
  --pod-network-cidr=192.168.0.0/16{depends on network plugin}

この時、ワーカーノードでjoinするためのコマンドが出力される
sudo kubeadm join <your-master-ip>:6443 --token <token> --discovery-token-ca-cert-hash <hash>

このトークンはkubeadm tokenで作成できる

kubectlで操作できるようにマスターで実行
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

TODO:
  マスターにsshを外部からできるようにするngrok？

### linuxネットワーク許可
プライベートネットワーク間の通信全て許可するなら
```
# firewall-cmd --zone trusted --add-source 10.244.0.0/16 --permanent
# firewall-cmd --zone trusted --add-source 192.168.0.0/24 --permanent
# firewall-cmd --reload
```
ufwの設定確認

### private network 構成
192.168.0.100 - 109 master
192.168.0.110 - 129 worker