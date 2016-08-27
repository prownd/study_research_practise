#########################################################################
# File Name: redis_cmd.sh
# Author: hanjinpeng
# Mail:hanjinpeng127@163.com 
# Created Time: 2016年08月12日 星期五 13时47分00秒
#########################################################################
#!/bin/bash

sync
dbsize 
config get *  # global config 
config get requirepass
config set requirepass testpasswd
auth testpasswd
masterauth  password
expired 
setex key 3 value
set key value EX 3

#2.8.14
psubscribe __keyevent@0__:expired
setex name 7 value1


info    #list all current inforamtion

#subscribe  publish
subscribe channel_1 channel_2

publish channel_1 "this is publish content"
publish channel_2 "this is publish content"


#data struct type  
#1:string    2:hashtable   3:list  4:set    5:sort set

#string key:value
set name hanhan
get name
keys *
keys name
append name  appstr
delete name
incr id
decr id
#hashtable
hset ht key1 value1
hget ht key1
hexists ht key1   # exists key1
hkeys ht   # list all keys
hvalues ht
hgetall ht   # get all
hdel ht key1   #delete hashtable k1


#list 
lpush list data1  # left push
rpush list data2  # right push
llen list          # len
lrange list 0 -1 #  -1 查看所有
lrange list 0 2
linsert list before a1 a4


# set 集合 ，无序，不能包含重复值 其他和list是一样的 
sadd set s1
sadd set s2
smembers set
sadd set2 ss1
smove set set2 s1
srem set s2


# 有序 set
zadd   zset 1 zs1
zadd zset 2  zs2
zadd zset 1 zs3
zrange zset 0 -1
zrem  zset zs1
zscore zset zs2



#############################redis.conf ########################
# include /path/to/local.conf
# include /path/to/other.conf

daemonize no

pidfile /var/run/redis.pid

port 6379

tcp-backlog 511

# Examples:
# bind 192.168.1.100 10.0.0.1
# bind 127.0.0.1

# unixsocket /tmp/redis.sock
# unixsocketperm 700

timeout 0

tcp-keepalive 0

loglevel notice

logfile ""

databases 16

save 900 1
save 300 10
save 60 10000


stop-writes-on-bgsave-error yes

rdbcompression yes

rdbchecksum yes

# The filename where to dump the DB
dbfilename dump.rdb

dir ./

# slaveof <masterip> <masterport>
# masterauth <master-password>

slave-serve-stale-data yes

slave-read-only yes

repl-diskless-sync no

repl-diskless-sync-delay 5

repl-disable-tcp-nodelay no

slave-priority 100

appendonly no

# The name of the append only file (default: "appendonly.aof")

appendfilename "appendonly.aof"

# appendfsync always
appendfsync everysec
# appendfsync no

no-appendfsync-on-rewrite no

auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
aof-load-truncated yes
lua-time-limit 5000
slowlog-log-slower-than 10000
slowlog-max-len 128
latency-monitor-threshold 0

notify-keyspace-events Ex

hash-max-ziplist-entries 512
hash-max-ziplist-value 64

list-max-ziplist-entries 512
list-max-ziplist-value 64

set-max-intset-entries 512

zset-max-ziplist-entries 128
zset-max-ziplist-value 64


hll-sparse-max-bytes 3000

activerehashing yes

client-output-buffer-limit normal 0 0 0
client-output-buffer-limit slave 256mb 64mb 60
client-output-buffer-limit pubsub 32mb 8mb 60

hz 10

aof-rewrite-incremental-fsync yes
