FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# jarファイルをコピー（事前にリポジトリに追加しておく）
COPY server/server.jar /app/server/server.jar
COPY bungee/bungee.jar /app/bungee/bungee.jar

# 設定ファイル（online-mode=false, eula=true に事前編集）
COPY server/server.properties /app/server/server.properties
COPY server/eula.txt /app/server/eula.txt

# 起動スクリプト
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# ポート公開（Renderは8081をメインで使う）
EXPOSE 8081 25565

CMD ["/app/start.sh"]