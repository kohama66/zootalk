# set :environment, "development"
# set :output, { :error => "log/cron_error.log" }
# set :path, "/Users/kohamaryou/projects/zootalk/app"
set :output, 'log/crontab.log'
set :environment, :development

# every 1.minute do 
#   rake "delete_group:time"
# end 
every 1.hours do
  begin
    rake "delete_group:time"
  rescue => e
    raise e
  end  
end