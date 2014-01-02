###nonref

= 8. 拡張ライブラリ

* ((<FAQ::拡張ライブラリ/8.1 Rubyを対話型で使いたいのですが>))
* ((<FAQ::拡張ライブラリ/8.2 デバッガはありますか>))
* ((<FAQ::拡張ライブラリ/8.3 C言語で書かれたライブラリをRubyで使いたいのですが>))
* ((<FAQ::拡張ライブラリ/8.4 (({Tcl/Tk}))のインターフェースはありますか>))
* ((<FAQ::拡張ライブラリ/8.5 Tkが動かないのですが>))
* ((<FAQ::拡張ライブラリ/8.6 gtk+、xformsのインターフェースはありますか>))
* ((<FAQ::拡張ライブラリ/8.7 日付の計算をしたいのですが>))

== 8.1 Rubyを対話型で使いたいのですが

irb というスクリプトがあります。
  $ irb
  irb(main):001:0> 1 + 2 * 3
  7
  irb(main):002:0> if true
  irb(main):003:1>   :true
  irb(main):004:1> else
  irb(main):005:1*   :false
  irb(main):006:1> end
  :true
  irb(main):007:0> 
のように使えます。

使い方の詳細は ((<irb>)) を参照してください。

バイナリパッケージのrubyを利用している場合 irb は別パッケージになって
いる可能性があります。各ディストリビューションの状況を調べてみてくださ
い。

== 8.2 デバッガはありますか

あります。Rubyを次のように起動してください。詳細は ((<debug>)) を参
照してください。

  ruby -r debug your_script

== 8.3 C言語で書かれたライブラリをRubyで使いたいのですが

RubyはCで書かれています。さらに、Cで書かれたライブラリを
Rubyで利用できるようにするための部品もととのっていますので、
Cで書かれたライブラリとRubyとの間のインターフェースを書くことに
より、Rubyから使えるライブラリができます。

まず、Rubyのソースを展開したディレクトリにある、
((<"ruby-src:README.EXT.ja">)) を読んでみましょう。この文書はRuby
そのものについて知るためにもよいドキュメントになっています。

次にext/ディレクトリの下にあるサブディレクトリを覗いてみると
実例が出てきます。ftpサイトのcontribにあるものも参考になる
ことでしょう。

== 8.4 Tcl/Tkのインターフェースはありますか

標準で添付されている拡張ライブラリに、Tcl/Tkのインターフェースが
あります。一つは、ext/tcltklib/lib以下のrequire "tcltk"で ロードされるインタ
ーフェースで、TclスクリプトをRubyスクリプト中に埋め込むよ
うな記述になります。

もう一つはext/tk/以下のrequire "tk"でロードされるインターフェースで、
こちらはよりRubyらしい記述でTkのGUIを実現することができます。

== 8.5 Tkが動かないのですが

お使いのTkのバージョンが古い可能性があります。新しいものと交換してみて
ください。

== 8.6 gtk+、xformsのインターフェースはありますか

((<"RAA:Ruby/GTK">)), ((<"RAA:Ruby/Forms">)) を参照してください。

== 8.7 日付の計算をしたいのですが

((<Time>))オブジェクトは、1970年1月1日から2038年1月19日までしか表せま
せん。標準添付ライブラリ ((<date>)) を使ってください。
((<"ruby-src:sample/cal.rb">)) も参照してください。