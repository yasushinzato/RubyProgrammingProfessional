require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'


class GateTest < Minitest::Test
    # テストメソッドが実行される前にこのメソッドが毎回呼ばれる
    def setup
      @umeda = Gate.new(:umeda)
      @juso = Gate.new(:juso)
      @mikuni = Gate.new(:mikuni)
    end

    def test_umeda_to_juso
      # とりあえずGateオブジェクトが作れることを確認する
      # assert Gate.new

      # 最初のテストシナリオ
      # 150円のきっぷ購入
      # 梅田で入場し、十三で出場する
      # 期待する結果：出場できる。
      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      assert @juso.exit(ticket)
    end

    # シナリオ２
    # 150円の切符を購入する
    # 梅田で入場し、三国で出場する
    # 期待する結果：出場できない
    def test_umeda_to_mikuni_when_fare_is_not_enough
      ticket = Ticket.new(150)
      @umeda.enter(ticket)
      refute @mikuni.exit(ticket)
    end

    # シナリオ3
    # 190円の切符を購入する
    # 梅田で入場し、三国で出場する
    # 期待する結果：出場できる
    def test_umeda_to_mikuni_when_fare_is_enough
      ticket = Ticket.new(190)
      @umeda.enter(ticket)
      assert @mikuni.exit(ticket)
    end

    # シナリオ4
    # 150円の切符を購入する
    # 十三で入場し、三国で出場する
    # 期待する結果：出場できる
    def test_juso_to_mikuni_when_fare_is_enough
      ticket = Ticket.new(150)
      @juso.enter(ticket)
      assert @mikuni.exit(ticket)
    end

end



# D:\pg\Ruby\RubyProgrammingProfessional\Chapter7>ruby test/gate_test.rb
# Run options: --seed 59707
#
# # Running:
#
# E
#
# Finished in 0.000869s, 1150.8808 runs/s, 0.0000 assertions/s.
#
#   1) Error:
# GateTest#test_gate:
# ArgumentError: wrong number of arguments (given 1, expected 0)
#     test/gate_test.rb:14:in `initialize'
#     test/gate_test.rb:14:in `new'
#     test/gate_test.rb:14:in `test_gate'
#
# 1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
#
# D:\pg\Ruby\RubyProgrammingProfessional\Chapter7>ruby test/gate_test.rb
# Run options: --seed 18837
#
# # Running:
#
# E
#
# Finished in 0.001749s, 571.7879 runs/s, 0.0000 assertions/s.
#
#   1) Error:
# GateTest#test_gate:
# NameError: uninitialized constant GateTest::Ticket
#     test/gate_test.rb:16:in `test_gate'
#
# 1 runs, 0 assertions, 0 failures, 1 errors, 0 skips

#
# D:\pg\Ruby\RubyProgrammingProfessional\Chapter7>ruby test/gate_test.rb
# Run options: --seed 51708
#
# # Running:
#
# E
#
# Finished in 0.001562s, 640.1229 runs/s, 0.0000 assertions/s.
#
#   1) Error:
# GateTest#test_gate:
# NoMethodError: undefined method `enter' for #<Gate:0x0000000004bdcb90 @name=:umeda>
#     test/gate_test.rb:18:in `test_gate'
#
# 1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
#
# D:\pg\Ruby\RubyProgrammingProfessional\Chapter7>
