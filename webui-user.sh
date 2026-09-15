#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
# Repo is a git submodule (its .git is a file, not a dir), so webui.sh's
# auto-detection of an existing checkout fails and it would re-clone into a
# nested subfolder. Point install_dir/clone_dir back at this same checkout.
install_dir="$(dirname "$SCRIPT_DIR")"

# Name of the subdirectory
clone_dir="$(basename "$SCRIPT_DIR")"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
export COMMANDLINE_ARGS="--api"

# python3 executable
#python_cmd="python3"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
# RTX 5060 (Blackwell, sm_120) precisa do torch com build CUDA 12.8+
export TORCH_COMMAND="pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128"

# Modern setuptools dropped pkg_resources, which breaks building openai/CLIP's
# legacy setup.py (even inside pip's isolated build env). Pin setuptools so
# pkg_resources stays available for that build.
export PIP_CONSTRAINT="$SCRIPT_DIR/pip-constraints.txt"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""
# Stability-AI/stablediffusion was taken down/made private (Dec 2025); use the
# community mirror that upstream itself switched to on dev. See:
# https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/17212
export STABLE_DIFFUSION_REPO="https://github.com/w-e-w/stablediffusion.git"

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
