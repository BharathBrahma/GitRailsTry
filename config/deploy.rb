require "bundler/capistrano"
set :application, "TryGitTuts"
set :deploy_to, "/home/www/#{application}"   # the destination dir

set :user, "kelso"
set :domain, "stefanhuska.sk"
server domain , :web ,:app

default_run_options[:pty] = true
set :use_sudo,        false

set :scm,             :git
set :repository,      "git@github.com:BharathBrahma/GitRailsTry.git"
#set :branch,          "master"

#set :ssh_options,     { :forward_agent => true }
#set :rails_env,       "production"
#set :user,            "manikandanpanchanathan"
#set :group,           "staff"
#set :use_sudo,        true

#role :web,    "127.0.0.1"
#role :app,    "127.0.0.1"
#role :db,     "127.0.0.1", :primary => true
#

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end