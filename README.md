# BookApp
SwiftUI+Combineで本リストを表示するためのサンプルアプリです。

## BookApp01
最もシンプルな本リストのサンプルアプリです。
ContentView内でBook表示専用に作られたView(BookView)を複数表示しています。

### データ表示までの流れ（正常系）
1.ContentViewでViewModelを初期化
2.ContentViewでViewModelをfetch()
3.ViewModelで3秒後にデータ(books)を更新
4.ContentViewでViewModel.booksの変更を受け取る
5.ContentViewでBookViewを表示
