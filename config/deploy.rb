# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'yellowings_mc'
set :repo_url, 'ssh://root@151.236.10.206/var/repo/yellowings_mc.git'
set :branch, 'master'
set :keep_releases, 1
set :deploy_to, '/var/www/yellowings_mc'
set :deploy_via, :remote_cache
set :branch, 'master'
set :pty, false
set :format, :pretty
set :user,   "root"
set :port, 4000
set :passenger_restart_with_sudo, true
set :linked_dirs, %w(public/uploads)
set :shared_path, "#{fetch(:deploy_to)}/shared"
set :sidekiq_monit_use_sudo, false

set :rails_env,      "production"
set :passenger_port, 4000
set :passenger_cmd,  "bundle exec passenger"
set :rails_env, "production"

namespace :deploy do

  task :start do
    on roles(:web) do
      #run "ls"
      run "kill $(sudo lsof -t -i:4000);"
    end
  end

  task :stop do
    on roles(:web) do
      run "kill $(sudo lsof -t -i:4000);"
    end
  end

   task :restart do
    on roles(:web) do

    run <<-CMD
      kill $(sudo lsof -t -i:4000);
    CMD

    #run "passenger start /var/www/yellowings_mc/current -a 151.236.10.206 -p 4000 -d -e production"
    end
  end
end

