# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/decidim/decidim", tag: "release/0.22-stable" }

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-term_customizer", git: "https://github.com/Platoniq/decidim-module-term_customizer", branch: "temp/0.22"
gem "decidim-decidim_awesome", git: "https://github.com/Platoniq/decidim-module-decidim_awesome"

gem "bootsnap", "~> 1.4"

gem "puma", "~> 4.3.5"
gem "uglifier", "~> 4.1"

gem "faker", "~> 1.9"
gem "delayed_job_web"
gem "sentry-raven"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"

  gem "capistrano"
  gem "capistrano-rbenv"
  gem "capistrano-bundler"
  gem "capistrano-passenger", ">= 0.1.1"
  gem "capistrano-rails"
end

group :production do
  gem "whenever", require: false
  gem "figaro", "~> 1.2"
  gem "passenger", "~> 6.0"
  gem "delayed_job_active_record", "~> 4.1"
  gem "daemons", "~> 1.3"
end

