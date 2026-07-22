@echo off

set PYTHON=C:\Users\anton\AppData\Local\Programs\Python\Python310\python.exe
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--api --listen --enable-insecure-extension-access

set STABLE_DIFFUSION_REPO=https://github.com/w-e-w/stablediffusion.git
set STABLE_DIFFUSION_XL_REPO=https://github.com/w-e-w/generative-models.git

call webui.bat

