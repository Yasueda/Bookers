class Batch::DataReset
  def self.data_reset
    # 投稿を全て削除
    Book.destroy_all
    p "投稿を全て削除しました"

    time = Time.new(2025, 7, 1, 10, 0, 0)
    Book.new(id: 1, title: "リーダブルコード", body: "より良いコードを書くためのシンプルで実践的なテクニック", created_at: time, updated_at: time).save(touch: false)
    Book.new(id: 2, title: "トラブル知らずのシステム設計", body: "システム設計の要点を図解で説明してくれます", created_at: time.since(5.minutes), updated_at: time.since(5.minutes)).save(touch: false)
    Book.new(id: 3, title: "たのしいRuby", body: "Rubyの入門におすすめです", created_at: time.since(10.minutes), updated_at: time.since(10.minutes)).save(touch: false)
    Book.new(id: 4, title: "入門Git", body: "gitについての基本操作から内部構造まで解説してくれます", created_at: time.since(15.minutes), updated_at: time.since(15.minutes)).save(touch: false)
    Book.new(id: 5, title: "アルゴリズム図鑑", body: "アルゴリズムについてカラーイラストでしっかり解説してくれます", created_at: time.since(20.minutes), updated_at: time.since(20.minutes)).save(touch: false)
    Book.new(id: 6, title: "達人プログラマー", body: "プログラマ入門者は必読！", created_at: time.since(25.minutes), updated_at: time.since(25.minutes)).save(touch: false)
    Book.new(id: 7, title: "データベース実践入門", body: "効率的なSQL文を教えてくれます", created_at: time.since(30.minutes), updated_at: time.since(30.minutes)).save(touch: false)
    p "初期データを作成しました"

  end
end