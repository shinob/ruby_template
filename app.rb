# app.rb
require "sinatra"
require "dotenv"

# 1) .env         （共通）
# 2) .env.<ENV>   （上書き）
env = ENV.fetch("APP_ENV", "development")
Dotenv.load(".env", ".env.#{env}")

configure do
  # Sinatra 自身の環境を同期
  set :environment, env.to_sym
  set :bind, "0.0.0.0"
  set :port, ENV.fetch("PORT", 4567)
end

get "/" do
  "Hello from #{settings.environment} environment!\n" \
  "DB_URL = #{ENV["DB_URL"]}"
end
