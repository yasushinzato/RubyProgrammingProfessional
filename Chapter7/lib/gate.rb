# 改札機を表すクラス<br>
# <br>
# 本物の運賃計算は複雑だが、例題では以下の内容になっている。<br>
# 「１区間なら１５０円、２区間なら１９０円」<br>
# 「有効な駅名は梅田、十三、三国の３種類」<br>
# 具体的には以下の実装となる。<br>
# 運賃を配列として用意<br>
# 駅名も配列として用意<br>
# 駅名の配列から乗車駅と降車駅を検索し、その添字を取得する<br>
# 「降車駅の添字 - 乗車駅の添字」で、区間の長さを取得する<br>
# 「区間の長さ - 1」を添え字として運賃の配列から適切な運賃を取得する.
class Gate

  STATIONS = [:umeda, :juso, :mikuni] # :nodoc:
  FARES = [150, 190] # :nodoc:

  # Gateオブジェクトの作成
  # === 引数
  # * +name+ - 駅名
  def initialize(name)
    @name = name
  end

  # 改札機を通って駅名に入場する
  # === 引数
  # * +ticket+ - 切符
  def enter(ticket)
    ticket.stamp(@name)
  end

  # 改札機を通って駅から出場する
  # === 引数
  # * +ticket+ - 切符
  # === 戻り値
  # * +boolean+ - 運賃が足りていれば+true+、不足していれば+false+
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 料金計算
  # === 引数
  # * +ticket+ - 切符
  # === 戻り値
  # * +fares+ - 乗車駅から降車駅の料金を返す
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
