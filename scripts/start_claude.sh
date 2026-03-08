#!/bin/bash

cd ~/vibe-coding-projs/hapi_coding_proj
echo "Starting HAPI Claude..."

# tmux kill-session -t vibe-claude
tmux new-session -d -s vibe-claude

tmux send-keys -t vibe-claude "claude" C-m

tmux split-window -h

tmux send-keys -t vibe-claude "hapi claude" C-m

tmux attach
