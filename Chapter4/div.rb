# 配列の多重代入は便利に使えるという一例
# divmodは商と余りを配列で返す
14.divmod(3) #=> [4,2]

# 戻り地を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}" #=>”商=4, 余り=2"

# 多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商=#{quotient}, 余り=#{remainder}" #=> ”商＝４、余り＝２”

# こういった場合は配列で受け取るより、多重代入を使ってスッキリできる。
