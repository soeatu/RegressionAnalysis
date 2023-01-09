#簡単な線形回帰モデル

# スピードと車の停止距離データセットを使用
libary(datasets)
data(cars)

#データの構造と項目の一覧を確認する
str(cars)

#データフレームの先頭と最後を表示
head(cars)
ctail(cars)

#関数summary()を使って平均値,中央値などを表示
summary(cars)

#目的変数：停止距離 dist
#説明変数：速度 　　speed

#速度と制動距離の関係を図示（標準のplot()関数）
plot(cars$speed, cars$dist)

#速度と制動距離の関係を図示
library(ggplot2)
ggplot(cars, aes( x=speed, y=dist) )+           #x軸とy軸を指定
  geom_point(colour="purple", size=3, alpha=0.5)+  #色,サイズ,透明度
  stat_smooth(method="lm", se=T)                   #回帰直線を加える
# seは回帰直線を描く際に上下に幅（95％信頼区間）を持たせる指定
# se=Tで直線に幅を加えて描く（se=Fで直線のみを描く）  

#関数lm()を使って回帰モデルを作成する
#扱う変数を括弧内に 目的変数~説明変数 の形で記述
#これだけでは詳しい情報は表示されない
lm( dist ~ speed, data=cars)

#モデルを一旦LM1という名前でオブジェクトに格納する
LM1 <- lm( dist ~ speed, data=cars)

#一旦格納したモデルを関数summary()で表示する
#この場合はより詳しい情報が表示される
summary(LM1)

cars$speed <- sapply(cars$speed,  function(x) {return (x^2)}) # 各要素の二乗を計算
head(cars)

#残業時間と勤続年数の関係を図示
library(ggplot2)
ggplot(cars, aes( x=speed, y=dist) )+           #x軸とy軸を指定
  geom_point(colour="purple", size=3, alpha=0.5)+  #色,サイズ,透明度
  stat_smooth(method="lm", se=T)                   #回帰直線を加える
# seは回帰直線を描く際に上下に幅（95％信頼区間）を持たせる指定
# se=Tで直線に幅を加えて描く（se=Fで直線のみを描く）  

#関数lm()を使って回帰モデルを作成する
#扱う変数を括弧内に 目的変数~説明変数 の形で記述
#これだけでは詳しい情報は表示されない
lm( dist ~ speed, data=cars)

#モデルを一旦LM1という名前でオブジェクトに格納する
LM1 <- lm( dist ~ speed, data=cars)
#一旦格納したモデルを関数summary()で表示する
#この場合はより詳しい情報が表示される
summary(LM1)
