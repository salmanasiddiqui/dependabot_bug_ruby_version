# frozen_string_literal: true

source "https://rubygems.org"

ruby file: ".ruby-version"

# Specify your gem's dependencies in dependabot_bug_ruby_version.gemspec
gemspec

group :development, :test do
  gem "factory_bot"
  gem "faker"
  gem "grpc-tools"
  # Rails is not a direct dependency of sdk, it's a dependency of <privategem1>. It's added here to ensure dependabot
  # doesn't downgrade it to rails v0.9.5 when creating PRs for version updates
  gem "rails", "~> 7.1.5"
  gem "rake"
  gem "rbs"
  gem "redis"
  gem "rspec"
end
