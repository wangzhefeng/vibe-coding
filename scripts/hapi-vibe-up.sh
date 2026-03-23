#!/bin/bash

PROJECT=~/vibe-coding-projs/vibestack/projects/hapi_coding_proj
SESSION=vibe

echo "Starting VibeStack..."

# kill old processes
pkill -f codex
pkill -f claude
pkill -f gemini
pkill -f opencode
pkill -f hapi

cd $PROJECT

# start tmux
tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION

# ------------------
# Codex
# ------------------
# window 1 codex
tmux send-keys -t $SESSION "cd $PROJECT" C-m
tmux send-keys -t $SESSION "codex" C-m

# split window
tmux split-window -h

# window 2 hapi codex
tmux send-keys -t $SESSION "cd $PROJECT" C-m
tmux send-keys -t $SESSION "hapi codex" C-m

# ------------------
# Claude Code
# ------------------
# split window
tmux split-window -h

# window hapi claude
tmux send-keys -t $SESSION "cd $PROJECT" C-m
tmux send-keys -t $SESSION "hapi claude" C-m

# ------------------
# Gemini
# ------------------
# split window
# tmux split-window -h

# window hapi claude
# tmux send-keys -t $SESSION "cd $PROJECT" C-m
# tmux send-keys -t $SESSION "hapi gemini" C-m

# ------------------
# opencode
# ------------------
# split window
tmux split-window -h

# window hapi claude
tmux send-keys -t $SESSION "cd $PROJECT" C-m
tmux send-keys -t $SESSION "hapi opencode" C-m


# ------------------
tmux attach -t $SESSION
