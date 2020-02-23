require 'rake/testtask'

Rake::TestTask.new do |t|
	# testディレクトリ以下にある、_test.rbという名前で終わるファイルを実行対象とする。
	# これはエラーになる。なぜかというと、実行するディレクトリの問題で、require での相対パス指定だとファイルが見つからないエラーが発生する。
	t.test_files = FileList['./*/test/*_test.rb']
end

task default: :test
