#ifndef ANET_H
#define ANET_H

#define ANET_OK 0
#define ANET_ERR -1
#define ANET_ERR_LEN 256

// 封装tcp connect
int anetTcpConnect(char *err, char *addr, int port);

//read
int anetRead(int fd, void *buf, int count);

//解析host
int anetResolve(char *err, char *host, char *ipbuf);

//set tcp server ,socket,bind,listen
int anetTcpServer(char *err, int port, char *bindaddr);

//accept
int anetAccept(char *err, int serversock, char *ip, int *port);

//write
int anetWrite(int fd, void *buf, int count);

//set no block  ==fcntl()
int anetNonBlock(char *err, int fd);

//setscoketopt()  no delay
int anetTcpNoDelay(char *err, int fd);

//setscoketopt()  keepalive
int anetTcpKeepAlive(char *err, int fd);

#endif
