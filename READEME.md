## makeコマンド

### 初回時実行

```
# 初回
make init
```

### コンテナ起動

```
make start
```

### 　コンテナストップ

```
make stop
```

### 　コンテナ削除
```
make rm 
```

### イメージ削除 
```
make rmi
```

### イメージ・コンテナ削除
```
make destroy_all
```

### 起動テスト
```
make open
```

## dockerコマンド

### ビルド

```
[ホスト]
docker build -t tomcat-image .
```
### コンテナ起動

```
[ホスト]
docker run -d -p 3000:8080 --name tomcat tomcat-image
```


### テスト

```
# ターミナルで表示出力したい場合
curl http://localhost:3000 
# ブラウザで確認したい場合
open http://localhost:3000 
```

