
1 添加账户 
    ./baccli keys add  key2
    私钥钥妥善保存,丢失不能找回
    生成私钥可以离线进行
2 使用助记词恢复私钥
   ./baccli keys add  key1 --recover
   恢复私钥可以离线进行

3 转账
	转账1bcv 为1000000ubcv    1后面6个0
	转账1bac 为1000000000nbac 1后面9个0 
   ./baccli tx  bank  send bac1anp8qzj4welr3ydqnfyhmnarxjwqk0vrhuca7n 1nbac --from bac1anp8qzj4welr3ydqnfyhmnarxjwqk0vrhuca7n --fees 100000000nbac

4 查询
	./baccli query tx 59BFD12C1341D16C076558673D8C48977520CEC8399C77EFEF6462A8C36D6017


5 测试账户
	{"addr":"bac1anp8qzj4welr3ydqnfyhmnarxjwqk0vrhuca7n","private_key":"pill mouse frost skull shoe desk voyage whisper call burst imitate blood plunge adapt scene neglect humor good pole print amazing early conduct consider"}


6 查询区块
  ./baccli query  block {区块高度}

7 查询交易
  ./baccli query tx {区块hash}

8 查询账户信息
  ./baccli query account {账户}

9 查看状态，可以用来获取最大高度
  ./baccli status


10 节点启动
  ./install.sh
  ./bacd start 

11 清除所有区块数据,重做节点 
./bacd  unsafe-reset-all

12 启动轻客户端
nohup ./baccli rest-server --node=127.0.0.1:26657 --chain-id=bacchain-mainnet-1.0 --laddr=tcp://0.0.0.0:1317 > ~/baccli_rest.log 2>&1 & 

13 升级
  1 下载最新的releases版本,解压
  2 杀掉正在运行的bacd和rest-server
    ps aux | grep bacd | grep -v grep | grep -v log| awk '{print $2}' | xargs   kill -15
    ps aux | grep rest-server | grep -v grep | grep -v log| awk '{print $2}' | xargs   kill -15
  3 使用最新的可执行文件覆盖bacd 和baccli
    cp v2.0-2/*  {bacd和baccli}的路径
  4 检查版本号并重启动
    ./bacd version && ./baccli version
    ./bacd start
    nohup ./baccli rest-server --node=127.0.0.1:26657 --chain-id=bacchain-mainnet-1.0 --laddr=tcp://0.0.0.0:1317 > ~/baccli_rest.log 2>&1 & 



