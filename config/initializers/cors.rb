Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if Rails.env.development?
      origins 'localhost:3000', 'localhost:3001', 'https://cap-frontend-wnyw.vercel.app'
    else
      origins 'https://cap-frontend-wnyw.vercel.app'
    end
    resource '*', headers: :any, methods: [:get, :post, :patch]
  end
end
