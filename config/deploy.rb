default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :application, "tc"
set :repository,  "git@github.com:slim2000/tc.git" #Setup instructions: http://help.github.com/capistrano/

set :scm, "git"
set :user, "deployer"  # The server's user for deploys
set :use_sudo, false
# set :scm_passphrase, "p@ssw0rd"  # The deploy user's password
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

# Use the .ssh keys rather than sending passwords
# Setup instructions for generating key for production server to github http://help.github.com/mac-key-setup/ 
# Setup instructions for deployer account on server http://articles.slicehost.com/2008/4/25/ubuntu-hardy-setup-page-1 
# and make sure to run ssh git@github.com from the serve and confirm the RSA fingerprint prompt first time

ssh_options[:forward_agent] = true 


  
set :branch, "master"  # tells cap the branch to checkout during deployment
set :deploy_via, :remote_cache  # only fetch the changes since the last
set :deploy_to, "/var/www/html/#{application}"

role :web, "ec2-72-44-53-209.compute-1.amazonaws.com"                          # Your HTTP server, Apache/etc
role :app, "ec2-72-44-53-209.compute-1.amazonaws.com"                          # This may be the same as your `Web` server
role :db,  "ec2-72-44-53-209.compute-1.amazonaws.com", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

# Help with running Capistrano https://github.com/capistrano/capistrano/wiki/2.x-From-The-Beginning
# Actually.. .the above link only works up to the point where script/process is discussed which we don't have in Rails 3.03
# Soo....http://mediumexposure.com/rails-3-reading-material/
# Dealing with running Capistrano not as root or with sudo http://blog.smartlogicsolutions.com/2008/06/06/deploying-rails-apps-with-capistrano-without-root-or-sudo-privileges/