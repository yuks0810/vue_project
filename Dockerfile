#nodeイメージをpullする
FROM node:10.15.3-alpine

#working directory
WORKDIR /app

#vuecliインストール
RUN npm install -g @vue/cli

#shファイルをコンテナにコピー
COPY ./scripts/docker.start.sh /scripts/start.sh

#shフォルダの権限追加（全員実行可）
RUN chmod +x /scripts/*

#初期実行
# ENTRYPOINT [ "/scripts/start.sh" ]
