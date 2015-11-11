$:.unshift File.expand_path(Dir.pwd, '..')

Bundler.require(:default, :test)

