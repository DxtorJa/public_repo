# public_repo

```
sudo apt-get update && sudo apt-get install gcc && wget https://raw.githubusercontent.com/DxtorJa/public_repo/main/port-forward.sh && chmod +x port-forward.sh && ./port-forward.sh
```

```
wget https://raw.githubusercontent.com/DxtorJa/public_repo/main/connect.sh && chmod +x connect.sh

```

```
apt install tmux

crontab -e

@reboot /usr/bin/tmux new-session -d -s openvpn-session -n openvpn-window '/home/lahiru/connect.sh'

```
