require "bundler/capistrano"

set :application, "jubileum"
set :deploy_to, "/var/www/#{application}"
set :user, "jubileum"
set :use_sudo, false
set :repository,  "git://github.com/rubenh/jubileum.git"
set :deploy_via, :remote_cache

set :scm, :git
set :scm_user, "rubenh"

server "rubenhartog.com", :app, :web, :db, :primary => true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

set :keep_releases, 5

after 'deploy:update_code', 'deploy:migrate'
after 'deploy:restart', 'deploy:cleanup'


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
