# mdl_webpay

[EC-CUBE](http://www.ec-cube.net)用のWebPayの決済モジュールです。

このモジュールははEC-CUBE上での決済をWebPayでおこなうことに特化しています。
集計などの付加的な機能やWebPayのデータとEC-CUBEのデータの連携は排し、WebPayは決済に集中し、商品や受注はEC-CUBEで独立して管理する方針です。
購入者によるクレイジットカード情報の入力、課金の作成、課金の実売上化のみを管理し、それ以外の機能は持ちません。

スクリプトを編集し、ご自身のショップのための付加的な機能を追加することもできます。
その際には[PHP APIドキュメント](https://webpay.jp/docs/api/php)、[WebPay利用ガイドライン](https://webpay.jp/docs/guideline)を熟読の上、購入者の情報が危険に晒されないよう注意して変更してください。

## 機能

- [WebPay](https://webpay.jp)にメールアドレスとパスワードを登録するだけですぐ試せます
- [トークン機能](https://webpay.jp/docs/payments_with_token)を用いることで EC-CUBE のサーバでカード情報を一切扱いません
- EC-CUBE の登録ユーザと WebPay の顧客を紐付けることにより、ログインしていれば次回以降はカード情報を入力せず利用できます
- EC-CUBE 内の注文、ユーザデータと WebPay の課金、顧客データを ID で対応づけて管理できます
- カード情報は WebPay のサーバで安全に管理されます。 EC-CUBE のサーバで厳しいカード情報の保存要件を満たす必要はありません
- 購入時は仮売上を作成し、発送する際に実売上化することができます

## 注意事項

- トークン決済に JavaScript が必要なため、携帯電話端末では利用できません
- PHP 5.3 以上でのみ動作します。PHP 5.2 はすでにサポートが終了しており、安全でないためサポートしません
- EC-CUBE 2.13 以上での動作を保証します

## インストール方法

- このリポジトリの内容をダウンロードし、 EC-CUBE 本体の `data/downloads/module/mdl_webpay` に配置してください。

```
cd EC-CUBE/data/downlaods/module
git clone https://github.com/webpay/mdl_webpay.git
```

- `mdl_webpay` ディレクトリ内で `composer install` を実行します。
  Composer のインストール方法は[Composer](https://getcomposer.org/doc/00-intro.md)を参考にしてください。

```
cd mdl_webpay
php composer.phar install --no-dev
```

- install_webpay.php を実行してデータベースに決済モジュールを登録します。

```
php install_webpay.php
```

- 実行して出力された URL をブラウザで開き、非公開鍵と公開可能鍵を設定します。
  最初はかならずテスト用の鍵をつかって動作を確認してください。

- install_webpay.php を実行すると、モジュールのディレクトリに WebPayExt.tar.gz というプラグインのファイルが作成されます。
  必要に応じて、管理画面から拡張プラグインをインストールしてください。

- 「基本情報管理＞支払方法設定」に「クレジットカード決済」ができていることを確認し、設定してください。

- 「基本情報管理＞配送方法設定」から「クレジットカード決済」が利用できるようにしてください。

## アップデート方法

アップデート時はテスト用の環境を以前のバージョンで作成し、アップデートが問題なく行えること、アップデート後の動作が正常であることを確認してください。

- 再度 install_webpay.php を実行してください。

- WebPay拡張プラグインをインストールし、更新してください。

- 設定画面を確認し、新しい項目や、まちがっている項目がないか確認してください。

## 利用方法

- 試しになにかの商品を購入し、支払方法に「クレジットカード決済」を指定すると、カード情報を入力する画面に遷移します。

- クレジットカード情報を入力し、購入できることを確認してください。

- WebPay のダッシュボードで、正しく課金が作成されたことを確認してください。

- 仮売上を利用する設定にした場合、受注詳細画面から実売上化できることを確認してください。

## ログ

このモジュールはWebPayとの通信内容を `data/logs/mdl_webpay_YYYYmmdd.log` に保存します。
毎日別のファイルが作成される点に注意してください。

モジュールの設計上、購入者の個人情報、クレジットカード情報、EC-CUBE の設定情報がログに出力されることはありません。
スクリプトを変更する際はこの点が維持されるよう注意してください。

## テスト

[Codeception](http://codeception.com) を利用した acceptance test を実施しています。
次の手順で実行してください。

- codeception の実行には PHP 5.4+ が必要です
- codeception.yml の設定に従ってデータベースを作成します
    - MySQL と PostgreSQL の両方でテストしてください
- `tests/_data/eccube_config.php` を `ECCUBE_ROOT/data/config/config.php` にコピーします
    - 利用するデータベースに合わせて `DB_TYPE` を変更してください
- port 9999 で EC-CUBE の HTTP サーバを立ち上げます
- `phantomjs --webdriver=4444` でテスト用の headless browser を準備します
- `vendor/bin/codecept run` でテストを実行します

Pull Request を出すときは必ず上述の手順でテストを行い、全ケースが通過することを確認してください。
機能追加を行う場合は該当のテストケースを追加してください。

# ライセンス

このリポジトリに含まれるプログラムはWebPayが権利を有しており、
Lesser Gnu Public License のもとで配布されます。
