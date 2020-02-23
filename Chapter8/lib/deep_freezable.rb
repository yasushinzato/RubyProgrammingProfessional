module DeepFreezable
  def deep_freeze(array_or_hash)
    # 配列とハッシュの処理を分ける
    case array_or_hash
    # 配列のfreeze処理
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    # ハッシュのfreeze
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    # 変数自体をfreezeして、戻り値とする
    array_or_hash.freeze
  end
end
