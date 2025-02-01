FROM ruby:3.2.6

# 必要なパッケージをインストール（開発向けに修正！）
RUN apt-get update -qq && apt-get install -y \
    nodejs npm build-essential sqlite3 && \
    npm install --global yarn

# 作業ディレクトリを `/app` に変更
WORKDIR /app

# Gemfile & Gemfile.lock をコピー
COPY Gemfile Gemfile.lock /app/

# `bundle install` を実行
RUN bundle install

# サーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]
