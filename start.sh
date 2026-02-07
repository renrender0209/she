#!/bin/sh

# server.jar と bungee.jar を同時に起動（& でバックグラウンド）
java $JAVA_OPTS -Xms1500m -Xmx1500m -jar /app/server/server.jar nogui &
java $JAVA_OPTS -Xms512m -Xmx512m -jar /app/bungee/bungee.jar

# プロセスが死なないよう待機
wait