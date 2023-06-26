FROM python:3.9.16

WORKDIR /app

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED 1
ENV PROCESSES 1

ENV POETRY_HOME /opt/poetry
ENV POETRY_VIRTUALENVS_IN_PROJECT true

ENV VENV_PATH /app/.venv
ENV PATH $POETRY_HOME/bin:$VENV_PATH/bin:$PATH

RUN apt-get -yq update \
    && apt-get -yq install \
        apt-transport-https \
        ca-certificates \
        curl \
        git \
        gnupg-agent \
        software-properties-common \
        zsh \
    && apt-get -yq autoremove --purge \
    && apt-get -yq autoclean \
    && apt-get -yq clean \
    && rm -rf /var/lib/apt/lists/* \
    && chsh -s $(which zsh) root \
    && sh -c "RUNZSH=no $(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --skip-chsh"

RUN curl -sSL https://install.python-poetry.org | python3 -

COPY poetry.lock pyproject.toml /app/

RUN poetry env use 3.9.16 \
    && poetry install

EXPOSE 9999

CMD ["poetry", "run", "jupyter", "lab", "--ContentsManager.allow_hidden=True", "--allow-root", "--no-browser", "--ip=0.0.0.0", "--port=9999"]
