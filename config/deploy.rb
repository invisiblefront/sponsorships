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
set :passenger_restart_with_sudo, false
set :linked_dirs, %w(public/uploads)
set :shared_path, "#{fetch(:deploy_to)}/shared"
set :sidekiq_monit_use_sudo, false

set :rails_env,      "production"
set :passenger_port, 4000
set :passenger_cmd,  "#{bundle_cmd} exec passenger"
set :rails_env, "production"

namespace :deploy do
  task :start, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && #{passenger_cmd} start -e #{rails_env} -p #{passenger_port} -d"
  end

  task :stop, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && #{passenger_cmd} stop -p #{passenger_port}"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run <<-CMD
      if [[ -f #{current_path}/tmp/pids/passenger.#{passenger_port}.pid ]];
      then
        cd #{current_path} && #{passenger_cmd} stop -p #{passenger_port};
      fi
    CMD

    run "cd #{current_path} && #{passenger_cmd} start -e #{rails_env} -p #{passenger_port} -d"
  end
end

