Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://locallhost:3000'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end

  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end

  allow do
    origins 'https://kirstenandlesliegetmarried.com'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
