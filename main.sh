#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#！RUN前：需要更改nginx.conf的第68和73行，以及synapse-install.sh的第5行
#！RUN后，请按照 create-db.md 的指示创建数据库

if [ ! -d "~/nginx" ];then
	\cp -ax .nginx ~/nginx
fi
chmod 777 ~/nginx/sbin/nginx

#初始化pgSQL
#sh startpg.sh
#pg_ctl stop
#pg_ctl -l ./postgresql.log start

if [ ! -f "install-complete.sh" ];then
#
sh ~/${REPL_SLUG}\/synapse-install.sh
#
mkdir -p ~/${REPL_SLUG}\/web/
#
curl -L https://gitlab.com/api/v4/projects/16112282/packages/generic/fluffychat/1.6.1/fluffychat-web.tar.gz -o ~/${REPL_SLUG}\/web/fluffychat-web.tar.gz
cd ~/${REPL_SLUG}\/web/
tar -zxvf fluffychat-web.tar.gz 
cd ~/${REPL_SLUG}\/
mv synapse-install.sh install-complete.sh
fi

# 
cd ~/${REPL_SLUG}\/synapse
synctl restart & exit &
nginx -g 'daemon off;'
