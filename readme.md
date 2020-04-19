用于springcloud学习

1 学习 nacso 作为 注册中心 与 配置中心
下载
https://github.com/alibaba/nacos/releases/tag/1.2.1

安装启动 nacso
cd nacos/bin/
sh startup.sh -m standalone(需配置好jdk环境)
验证启动成功
http://localhost:8848/nacos  nacos/nacos

服务持久化到数据库
application.properties

db.num=1
db.url.0=jdbc:mysql://127.0.0.1:3306/nacos_config?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true
db.user=root
db.password=root123

Nacos实现Spring Cloud Gateway的动态路由

2 sentinel     降级 限流 熔断 雪崩 https://sentinelguard.io/zh-cn/docs/introduction.html
下载
https://github.com/alibaba/Sentinel/releases
运行 java -jar sentinel-dashboard-1.7.0.jar 
查看端口占用
lsof -i:8080
杀进程
kill -9 
http://localhost:8080/  sentinel/sentinel

图形流量监控

流量限流 
QPS 线程
直接

关联限流  
我支付接口快瘫了  你下单接口别下这么猛了(限流)

预热  防止突然访问量暴涨
阈值10 预热时间5  QPS 10/3 允许5秒钟慢慢到10   
场景秒杀系统开启的瞬间 会有很多流量上来 很有可能把系统打死 
预热方式就是为了保护系统 可慢慢的把流量放进来 慢慢的把阈值增长到设置的阈值

排队等候 
处理一会砸过来大量请求  空闲一会又砸过来大量请求 
我们希望不去全面拦截 全部处理了完成
这种方式主要用于处理间隔性突发的流量，例如消息队列。
想象一下这样的场景，在某一秒有大量的请求到来，而接下来的几秒则处于空闲状态，
我们希望系统能够在接下来的空闲期间逐渐处理这些请求，而不是在第一秒直接拒绝多余的请求。

平均响应时间 (DEGRADE_GRADE_RT)：当资源的平均响应时间超过阈值（DegradeRule 中的 count，以 ms 为单位）之后，
资源进入准降级状态。接下来如果持续进入 5 个请求，它们的 RT 都持续超过这个阈值，
那么在接下的时间窗口（DegradeRule 中的 timeWindow，以 s 为单位）之内，对这个方法的调用都会自动地返回（抛出 DegradeException）。
注意 Sentinel 默认统计的 RT 上限是 4900 ms，超出此阈值的都会算作 4900 ms，
若需要变更此上限可以通过启动配置项 -Dcsp.sentinel.statistic.max.rt=xxx 来配置。

200  1
十个线程一秒钟打过去 就回熔断  不打了 一秒钟之后恢复

异常比例 (DEGRADE_GRADE_EXCEPTION_RATIO)：
当资源的每秒异常总数占通过量的比值超过阈值（DegradeRule 中的 count）之后，
资源进入降级状态，即在接下的时间窗口（DegradeRule 中的 timeWindow，以 s 为单位）之内，
对这个方法的调用都会自动地返回。异常比率的阈值范围是 [0.0, 1.0]，代表 0% - 100%。


异常数 (DEGRADE_GRADE_EXCEPTION_COUNT)：
当资源近 1 分钟的异常数目超过阈值之后会进行熔断。

124 热点key上











