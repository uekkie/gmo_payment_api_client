# openapi-generator インストール

参考）OpenAPIのスキーマからgemを作成する
https://zenn.dev/maimai_neet/scraps/35908e78861fdc

```shell
brew install openapi-generator
```

# gem 作成
```shell
openapi-generator generate -i ./gmo-pg-openapi-type-specification.json -g ruby -o ./lib/ --additional-properties=gemName=gmo_payment_api_client,gemRequiredRubyVersion='>= 3.2.0' --library=faraday
```

# gem のビルド

```shell
gem build ./lib/gmo_payment_api_client.gemspec
```

