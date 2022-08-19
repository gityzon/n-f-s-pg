#！生成homeserver配置文件，请更改your-domain.com!
cd ~/${REPL_SLUG}\/synapse
python -m synapse.app.homeserver \
    --server-name your-domain.com \
    --config-path homeserver.yaml \
    --generate-config \
    --report-stats=yes
