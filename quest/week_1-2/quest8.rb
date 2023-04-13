# ハッシュと配列の違いは要素へのアクセス方法です。
# 配列が要素を指定するのに「0」から始まるインデックスを使用するのに対し、
# ハッシュはインデックスに「キー」と呼ばれる任意の文字列を指定して「バリュー」と呼ばれる要素を指定します。
# また、配列は要素を順番に並べたリストであり、ハッシュはキーと値のペアの集合である。

# ハッシュと配列はそれぞれどのような用途に向いているのか
# ハッシュはキーでデータを検索することができます。
# 配列は複数の値を一度に扱う時に有効です。例えば平均値を計算する場合です。
# あとは要素の追加や削除を頻繁に行う際には配列を利用する

# 2. 首都
# 国名と首都名が組み合わせになったハッシュに対して、"#{国名}の首都は#{首都名}です"と出力する関数 print_capitals

def print_capitals(capitals)
    # ハッシュの中身を一つずつ処理する
    capitals.each do |country, capital|
        puts "#{country}の首都は#{capital}です"
    end
end


print_capitals({ '日本' => '東京', 'アメリカ' => 'ワシントンD.C.' })