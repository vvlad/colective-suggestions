deploy_path = if File.directory? "deploy"
  Pathname(Dir.pwd).join "deploy"
elsif File.exists? "deploy.rb"
  Pathname(Dir.pwd)
end

set :deploy_config_path,  deploy_path.join("deploy.rb")
set :stage_config_path,   deploy_path.join("environments")


require 'capistrano/cluster'


