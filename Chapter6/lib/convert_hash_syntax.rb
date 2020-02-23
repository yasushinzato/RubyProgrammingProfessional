def convert_hash_syntax(old_syntax)
  # 何も変換せずに返す(最初のテスト疎通確認)
  # old_syntax
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end
