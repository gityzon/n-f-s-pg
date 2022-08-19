#安装synapse
mkdir -p ~/${REPL_SLUG}\/synapse
virtualenv -p python3 ~/${REPL_SLUG}\/synapse/env
source ~/${REPL_SLUG}\/synapse/env/bin/activate
pip install --upgrade pip
pip install --upgrade setuptools
pip install matrix-synapse

#！生成homeserver配置文件，请更改your-domain.com!
cd ~/${REPL_SLUG}\/synapse
python -m synapse.app.homeserver \
    --server-name your-domain.com \
    --config-path homeserver.yaml \
    --generate-config \
    --report-stats=yes
