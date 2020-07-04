# pcsc_scan

## 使い方

スマートカードサ－バーPCSCD が動いているホスト上で
pcsc_scanを行いスマートカードの情報を確認する。

起動
docker-compose up

停止
docker-compose stop

終了
docker-compose down

### docker-compose.yml

```none
version: '3.7'
services:
  pcsc_scan:
    build:
      context: ./
      dockerfile: Dockerfile
    image: kurukurumaware/pcsc_scan:latest
    container_name: pcsc_scan
    volumes:
      - /var/run:/var/run 
```
