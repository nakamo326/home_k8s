# Kubernetesクラスター構築用Ansible Playbook

## 使い方
1. サーバーにOSをインストールする（手作業の温もり
2. サーバーのセットアップ後、Ansibleを実行するホストマシンからsshキーを使って接続できるよう設定する
  ex)`ssh-copy-id -i ~/.ssh/key.pub user@host`
3. `hostfile`にサーバのIPアドレスを追加する（事前にルーター側でIPアドレスを固定すること
4. `make`コマンドを実行
5. sudo権限昇格用のパスワードの入力を求められるので、サーバマシンユーザのパスワードを入力
6. サーバーにKubernetesの実行環境が構築される