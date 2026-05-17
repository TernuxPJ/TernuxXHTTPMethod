#!/bin/bash
tmux kill-session -t ternux 2>/dev/null || true
tmux new-session -d -s ternux
tmux send-keys -t ternux "sudo /usr/local/bin/xray run -c /etc/xray/config.json &>/tmp/xray.log" Enter
sleep 2
show-link.sh
tmux new-window -t ternux -n keepalive
tmux send-keys -t ternux:keepalive "while true; do curl -s --max-time 5 https://github.com/ -o /dev/null; sleep 180; done" Enter
echo "[TernuxXHTTPMethod] Xray is running in background (tmux session: ternux)"
echo "[TernuxXHTTPMethod] View logs: tmux attach -t ternux"
