## ssh ポートフォワーディングの設定
https://tech.fez-inc.jp/5d386d80756c4295822bef7a7b615907
aws lightsailで一番安いプランでインスタンス作る
静的IPを設定
Lightsailのsshdの設定を変更

ローカル側から
ssh -fN <SVR> -R 60080:127.0.0.1:22
みたいな感じで実行すると
Lightsailのport60080がローカルの22番ポートのようにふるまう

TODO:
- ローカルのssh実行をサービス化する

/etc/systemd/system/ssh_pf.service
```
[Unit]
Description=SSH Port Forwarding

[Service]
Type=simple
User=user
ExecStart=/usr/bin/ssh -o ExitOnForwardFailure=yes -o ServerAliveInterval=30 -o TCPKeepAlive=no -N -R '60080:127.0.0.1:22' lightsail-ip
Restart=always
RestartSec=30

[Install]
WantedBy=multi-user.target
```