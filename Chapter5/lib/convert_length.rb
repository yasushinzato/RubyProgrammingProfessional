UNITS = {m: 1.0, ft: 3.28, in: 39.37}
def convert_length(length, from: , to:)
  # メートル、フィート、インチの単位をハッシュで定義
#  units = {m: 1.0, ft: 3.28, in: 39.37}  #定数はメソッドの外で保持しておくほうが実行効率がよくなる

  # 変換前の単位の長さ　÷　変換前の単位の比率　×　変換後の単位の比率  少数第３位で四捨五入する
  (length / UNITS[from] * UNITS[to]).round(2)
end
