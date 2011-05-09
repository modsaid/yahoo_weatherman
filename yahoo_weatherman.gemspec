Gem::Specification.new do |gem|
  gem.name = "yahoo_weatherman_extended"
  gem.version = "1.2.0"
  gem.authors = ["Dalto Curvelano Junior", "Mahmoud Said"]
  gem.description = "a fork of leandroo/yahoo_weatherman, A ruby wrapper to the Yahoo! Weather feed with i18n support, to handle the updated parameters for yahoo weather service parameters."
  gem.summary = "A ruby wrapper to the Yahoo! Weather feed with i18n support."
  gem.files = [
    "yahoo_weatherman.gemspec",
    "lib/yahoo_weatherman/image.rb",
    "lib/yahoo_weatherman/response.rb",
    "lib/yahoo_weatherman/i18n.rb",
    "lib/yahoo_weatherman.rb",
    "i18n/pt-br.yml",
    "spec/files/belo_horizonte_c.rss",
    "spec/files/belo_horizonte_f.rss",
    "spec/spec_helper.rb",
    "spec/yahoo_weatherman/response_spec.rb",
    "spec/yahoo_weatherman/yahoo_weatherman_spec.rb",
    "spec/yahoo_weatherman/i18n_spec.rb"
  ]
  gem.homepage = "http://github.com/modsaid/yahoo_weatherman"
end
