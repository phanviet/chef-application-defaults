define :ruby_exec do
  rvm_shell params[:name] do
    ruby_string "#{node[:app][:ruby_ver]}@#{node[:app][:ruby_gemset]}"
    cwd params[:release_path]
    user node[:app][:user]
    group node[:app][:group]

    code params[:code]
  end
end
