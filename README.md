application-defaults Cookbook
============

This cookbook helps you setup the general information and resource helpers to deploy a rails application.
- Some related cookbooks uses it:
  + [application-nginx](https://github.com/phanviet/chef-application-nginx.git)
  + [application-monit](https://github.com/phanviet/chef-application-monit.git)
  + [application-unicorn](https://github.com/phanviet/chef-application-unicorn.git)
  + [application-puma](https://github.com/phanviet/chef-application-puma.git)
  + [application-sidekiq](https://github.com/phanviet/chef-application-sidekiq.git)
  + [application-solr](https://github.com/phanviet/chef-application-solr.git)

Attributes
----------
- Require:
  + `node[:app][:domain]`: rails application domain
  + `node[:app][:user]`: app owner
  + `node[:app][:group]`: app group
- Optional:
  + Reading `attributes` folder in cookbook to know more details

Resources
-----
#### upload_template
Upload templates. The template files should be in `templates/` folder

Example:

```ruby
upload_template "/path/destination/file.yml" do
    source 'file.yml.erb'
end
```

#### upload_file
Upload static files. The static files should be in `files/` folder

Example:

```ruby
upload_file "name" do
    source "/path/source/file.xml"
    path "/path/destination/file.xml"
end
```

#### ruby_exec
Execute command with ruby wrapper

Example:

```ruby
ruby_exec 'Bundle install' do
    dir '/directory'
    code %(
        bundle install
    )
end
```
