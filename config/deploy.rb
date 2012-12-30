set :application, "ruby4kidswebsite"
set :repository,  "https://github.com/ruby4kids/ruby4kidswebsite.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :branch, fetch(:branch, "release")
set :env, fetch(:env, "production")

role :web, "web.ruby4kids.com"                          # Your HTTP server, Apache/etc
role :app, "web.ruby4kids.com"                          # This may be the same as your `Web` server
role :db,  "web.ruby4kids.com", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
