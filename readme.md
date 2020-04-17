用于springcloud学习

1 学习 nacso 作为 注册中心 与 配置中心
安装启动 nacso
cd nacos/bin/
sh startup.sh -m standalone(需配置好jdk环境)
验证启动成功
http://localhost:8848/nacos  nacos/nacos

application.properties

db.num=1
db.url.0=jdbc:mysql://127.0.0.1:3306/nacos_config?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true
db.user=root
db.password=root123

