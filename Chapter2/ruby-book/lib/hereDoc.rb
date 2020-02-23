# 文字列は途中で改行できる
puts "Line 1,
Line2"

# ヒアドキュメント（行指向文字列リテラル）
# <<識別子
# 1行目
# 2行目
# 識別子
a = <<TEXT
これはヒアドキュメント
複数行に渡る長い行を作成するのに便利
TEXT
puts a

def some_method_indent
  <<-TEXT
  これはヒアドキュメント
  <<-を使うと最後の識別子をインデントさせられる。
  TEXT
end

puts some_method_indent

# <<-識別子だとインデント。
# <<~識別子だと中の文字列のインデントは無視される。
def some_method_indent
  <<-TEXT
  これはヒアドキュメント
  <<-を使うと最後の識別子をインデントさせられる。
  TEXT
end

puts some_method_indent
