set :stage, :production

role :app, %w{root@151.236.10.206}
role :web, %w{root@151.236.10.206}
role :db,  %w{root@151.236.10.206}

server "151.236.10.206", user: 'root', roles: %w{app web db}
