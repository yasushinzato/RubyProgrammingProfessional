require 'minitest/autorun'
require './lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    # とりあえずモジュールが参照できることを確認する
    # assert Effects
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end
end
