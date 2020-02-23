# 16進数へ基数変換するメソッド
def to_hex(r, g, b)
  # '#' +
  #   r.to_s(16).rjust(2, '0') +
  #   g.to_s(16).rjust(2, '0') +
  #   b.to_s(16).rjust(2, '0')
# 上記ロジックだとDRY原則に反している。
    # hex = '#'
    # [r, g, b].each do |n|
    #   hex += n.to_s(16).rjust(2,'0')
    # end
    # hex
# 更にリファクタリングするとこうなる。
    [r, g, b].inject('#') do |hex, n|
      hex + n.to_s(16).rjust(2, '0')
    end
end

# 16進数を2進数へ基数変換するメソッド
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   # ints = []
#   # [r, g, b].each do |s|
#   #   ints << s.to_hex
#   # end
#   # ints
# # 上記ロジックをリファクタリング
#   [r, g, b].map do |s|
#     s.hex
#   end
# end
# 多重代入でリファクタリング
# def to_ints(hex)
#   r,g,b = hex[1..2],hex[3..4],hex[5..6]
#   [r,g,b].map do |s|
#     s.to_hex
#   end
# end
# 正規表現で変数を作らなくてもいいようにリファクタリング
# def to_ints(hex)
#   # r,g,b = hex[1..2],hex[3..4], hex[5..6]
#   # r,g,b = hex.scan(/\w\w/)
#   hex.scan(/\w\w/).map do |s|
#     s.hex
#   end
# end
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end
