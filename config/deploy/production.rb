server '3.236.201.250', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'