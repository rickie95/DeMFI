FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu16.04

RUN apt-get update && \
    apt-get install -y git python3 python3-pip curl build-essential \
    libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/rickie95/DeMFI && \
    curl https://pyenv.run | bash && \
    export PYENV_ROOT="$HOME/.pyenv" && \
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH" && \
    eval "$(pyenv init -)" && \
    pyenv install 3.7.4 && pyenv global 3.7.4 && \
    cd DeMFI && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

