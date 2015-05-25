define :upload_template do
  owner = params[:owner] ? params[:owner] : node[:app][:user]
  group = params[:group] ? params[:group] : node[:app][:group]
  mode = params[:mode] ? params[:mode] : '0700'

  template params[:name] do
    source params[:source]
    owner owner
    group group
    mode mode
  end
end

define :upload_file do
  owner = params[:owner] ? params[:owner] : node[:app][:user]
  group = params[:group] ? params[:group] : node[:app][:group]
  mode = params[:mode] ? params[:mode] : '0700'
  source = params[:source] ? params[:source] : params[:name]

  cookbook_file params[:name] do
    path params[:path]
    owner owner
    group group
    mode mode
    source source
    action :create
  end
end
