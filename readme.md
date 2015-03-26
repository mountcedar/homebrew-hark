# はじめに

このプロジェクトは、ロボット聴覚ソフトウェアHARKをMacOSXにHomebrewでインストールするためのプロジェクトです。
対応しているVersionには限りがありますが、比較的容易に使用できるため、MacでHARKを使いたい方にはひとつの選択肢になります。

# 注意点

* このプロジェクトは有志によって作成されたプロジェクトです。HARKの開発元とは関係ありませんので、このプロジェクトで出た問題をHARK supportに問い合わせても返事は返ってきません。迷惑になるため、brewのインストールに関する問題はIssuesに書き込んでください。
* このプロジェクトは、個人のビルド結果を元にその内容を共有するために作っています。すべてのリクエストには対応しませんので、
ある程度、自分で何とかできる方のみ、ご使用ください。
* すべてのHARKノードが使用可能なわけではありません。Microconeなどでの録音には対応していませんので、Audacityなど、
別途のソフトウェアで録音してからオフラインで、ご利用ください。

# 対応するバージョン

* MacOSX 10.10 Yosemite

Marverick以下では動作しません。あしからず、ご了承ください。

# インストール方法

以下を実行してください。

```
$ brew update
$ brew tap mountcedar/homebrew-hark
$ brew install hark
```

以下を実行して、正常にhark_designerが起動したらインストール成功になります。

実際にインストールされるパッケージは以下のとおりです。

* libharkio3
* flowdesigner
* hark-fd
* hark_designer

その他、パッケージは必要に応じて、追加していきます。

# アンインストール方法

以下を実行してください。

```
$ brew remove hark
$ brew untap mountcedar/homebrew-hark
```

# 制限事項

* AudioStreaimFromMicは使えません。オフラインのみ動作します。
