set :application, "mticket"
default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
set :repository, %x[git remote show origin | grep URL | grep Fetch | cut -d" " -f5].chomp  # Your clone URL
set :scm, "git"
set :user, "manikandanpanchanathan"  # The server's user for deploys
set :scm_passphrase, "abithu"  # The deploy user's password
#set :deploy_via, :export  
set :deploy_via, :remote_cache #This will do a git pull on every deploy instead of doing an entire clone/export.

role :web, "localhost","localhost"
role :app, "localhost","localhost"
role :db, "localhost","localhost"

set :deploy_to, "/BharathB/deploy"