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
set :passenger_cmd,  "passenger"


namespace :deploy do

  desc 'Restart application'

  #task :start do ; end
  task :stop do ; end

  task :start do
    #run "passenger start /var/www/yellowings_mc/current/ -a 151.236.10.206 -p 4000 -d -e production"
  end


   task :symlink_uploads do
    on roles(:app), in: :sequence, wait: 5 do
     execute "ln -nfs #{shared_path}/public/uploads  #{release_path}/public/uploads"
    end
   end




 task :publishing do
 invoke 'deploy:symlink:release'

end

  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end


  #before :publishing, 'deploy:run_tests'
  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'

  before :restart, 'deploy:symlink_uploads'

  #after 'deploy:setup_config', 'nginx:reload'

end

