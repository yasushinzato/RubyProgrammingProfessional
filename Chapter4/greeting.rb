# 4.7.7 メソッドの可変長引数
def greeting(*names)
	"#{names.join('と')}、こんにちは!"
end
puts greeting('田中さん')
puts greeting('田中さん', '鈴木さん')
puts greeting('田中さん', '鈴木さん', '佐藤さん')
