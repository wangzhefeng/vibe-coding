#!/bin/bash

echo "Starting HAPI Codex..."
cd ~/vibe-coding-projs/hapi_coding_proj


pkill -f codex

tmux kill-session -t vibe-codex
tmux new-session -d -s vibe-codex

tmux send-keys -t vibe-codex "codex" C-m

tmux split-window -h

tmux send-keys -t vibe-codex "hapi codex" C-m

tmux attach
