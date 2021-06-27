#nodeイメージをpullする
FROM node:14.15.0-alpine

#working directory
WORKDIR /app

#vuecliインストール
RUN npm install -g @vue/cli && apk add git

#shファイルをコンテナにコピー
COPY ./scripts/docker.start.sh /scripts/start.sh

#shフォルダの権限追加（全員実行可）
RUN chmod +x /scripts/*

#初期実行
# ENTRYPOINT [ "/scripts/start.sh" ]
