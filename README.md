# bundler-path2


This is a replication of the path source for Bundler in form of a plugin. Still a work in progress. You need to use my fork to work http://github.com/suhastech/bundler

```
gem build bundler-path2.gemspec
gem install bundler-path2-0.0.0.gem
```

After this, the plugin can be used in bundler by having this in the Gemfile

```
plugin "path2"

gem "name", :path2 => "/path/to/your/unpacked/gem"
```


The :path2 parameter is registered in this Plugin. You can have anything maybe :svn, :s3

You can define it as shown in lib/bundler-path2.rb. The implementation is done in lib/source.rb

Most of the code is from the core itself with a few changes. 
https://github.com/bundler/bundler/blob/master/lib/bundler/source/path.rb
