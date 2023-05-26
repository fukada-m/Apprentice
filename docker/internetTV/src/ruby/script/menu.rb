# frozen_string_literal: true

# メニューを表示するクラスです。
class Menu
  attr_reader :menus

  def initialize
    @menus = [
      "\nメニューを表示します。知りたいものの番号を入力してください",
      '1. エピソード視聴数トップ3のエピソード名と視聴数を表示してください。',
      '2. エピソード視聴数トップ3のタイトル、シーズン数、エピソード数、エピソード名、視聴数を表示してください',
      '3. 本日放送される全ての番組に対して、チャンネル名、放送時刻、タイトル、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を表示してください',
      '4. 本日から一週間分のドラマチャンネルの放送時刻、シーズン数、タイトル、エピソード数、エピソード名、エピソード詳細を表示してください',
      '5. 直近一週間に放送された番組の中で、エピソード視聴数合計トップ2の番組に対して、番組タイトル、視聴数を表示してください',
      '6. ジャンルごとに視聴数トップの番組に対して、ジャンル名、番組タイトル、エピソード平均視聴数を表示してください。',
      '99. 終了'
    ]
  end
end