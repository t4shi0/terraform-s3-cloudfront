## 概要
Terraformを使って、S3 + CloudFrontの構成を作ったサンプル

## バージョン
```
$ tfenv -v
tfenv 2.2.2
$ terraform -v
Terraform v1.0.2
$ direnv --version
2.28.0
```

## ディレクトリ構成

```
.
├── environments
│   ├── dev
│   │   ├── main.tf
│   │   └── variables.tf
│   └── prod
│       ├── main.tf
│       └── variables.tf
└── modules
    ├── cloudfront
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    └── s3
        ├── main.tf
        ├── outputs.tf
        └── variables.tf
```

## 手順
1. 環境変数ファイル作成
```
$ cd terraform-s3-cloudfront
$ touch environments/dev/.envrc
```

2. AWSの認証情報入力

```.envrc
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_REGION="ap-northeast-1"
```

```
$ direnv allow
```


3. 適用
```
$ cd environments/dev/
$ terraform apply
```
