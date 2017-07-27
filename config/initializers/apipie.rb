Apipie.configure do |config|
  config.app_name                = "Sindicato"
  config.api_base_url            = "/webservices"
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
