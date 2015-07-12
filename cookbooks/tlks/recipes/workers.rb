git "/opt/tlks.io/worker.facebook" do
  repository "https://github.com/tlksio/worker.facebook"
  revision "develop"
  action :sync
end

bash "api" do
    cwd "/opt/tlks.io/worker.facebook"
    code <<-EOH
    chown www-data:www-data -R ..
    chmod g+w -R ..
    npm install
    EOH
end
