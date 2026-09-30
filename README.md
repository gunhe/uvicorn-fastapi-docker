## 快速启动

```bash
# 1. 构建镜像，指定 Dockerfile 文件
docker build -t myimage -f python3.12-slim.dockerfile .

# 2. 启动容器，指定容器名和端口
docker run -d --name myapp -p 8000:80 myimage

# 3. 查看运行状态
docker ps | grep myapp
```

## 💡 常用补充

| 需求 | 命令 |
| :--- | :--- |
| 查看容器日志 | `docker logs -f myapp` |
| 停止容器 | `docker stop myapp` |
| 删除容器 | `docker rm myapp` |
| 删除镜像 | `docker rmi myimage` |
| 进入容器 | `docker exec -it myapp bash` |