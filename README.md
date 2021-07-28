## 概要
Terraformを使って、S3 + CloudFrontの構成を作ったサンプル

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
