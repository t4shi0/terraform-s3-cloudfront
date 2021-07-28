## 概要
Terraformを使って、S3 + CloudFrontの構成を作ったサンプル

## ディレクトリ構成

```
.
├── environments
│   ├── dev               ・・・・・・ 開発環境ディレクトリ。この配下でterraform を実行
│   │   ├── main.tf       ・・・・・・ 開発環境用の profile や 呼び出すmodule を設定
│   │   └── variables.tf  ・・・・・・ 開発環境用の値を設定。t2.microとか
│   ├── prod              ・・・・・・ 本番環境
│   │   ├── main.tf              
│   │   └── variables.tf
│   └── stg               ・・・・・・ ステージング環境
│       ├── main.tf              
│       └── variables.tf
└── modules               ・・・・・・モジュール本体。機能ごとにそれぞれ分けたもの
    ├── hello-app-server
    │   ├── main.tf       ・・・・・・主処理を記載
    │   ├── outputs.tf    ・・・・・・ルートや他のmoduleで、このmoduleの出力値を使用する場合、定義
    │   └── variables.tf  ・・・・・・このモジュールのインプットとなる値を定義
    ├── network
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    └── security
        ├── main.tf
        ├── outputs.tf
        └── variables.tf
```
